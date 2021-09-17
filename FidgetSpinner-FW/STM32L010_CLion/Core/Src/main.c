/* USER CODE BEGIN Header */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define SET_LED(data) GPIOA->BSRR = (data & 0xff)|((~data & 0xff)<<16)

#define _STATE_STILL 1
#define _STATE_FIRSTROUND 2
#define _STATE_RUNNING 3

#define _SPACE_LINE_INTERVAL 10
#define _SPACE_CHAR_INTERVAL 10
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc;

/* USER CODE BEGIN PV */

uint8_t mode = 0;
//0 - Loops counter
//1 - Timer +mm:ss
//2 - RPM meter
//3 - Battery |TODO:ADC
//4 - Animation |TODO
//5 - Random gen - yes 45 no 45 maybe 10
//6 - User defined text
//7 - Best score - max loops max time max speed |TODO:EEPROM
uint8_t state = _STATE_STILL;

static const uint8_t CHARS[53][8] = {
   {0b10000001,
    0b01101110,
    0b01110110,
    0b01111010,
    0b10000001},//0
   {0b01111111,
    0b01111101,
    0b00000000,
    0b01111111,
    0b01111111},//1
   {0b00111101,
    0b01011110,
    0b01101110,
    0b01110110,
    0b01111001},//2
   {0b10111101,
    0b01111110,
    0b01110110,
    0b01110110,
    0b10001001},//3
   {0b11001111,
    0b11010011,
    0b11011101,
    0b00000000,
    0b11011111},//4
   {0b10110000,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001110},//5
   {0b10000001,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001101},//6
   {0b11111100,
    0b11111110,
    0b00001110,
    0b11110010,
    0b11111100},//7
   {0b10001001,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001001},//8
   {0b10111001,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10000001},//9
    //A-Z
   {0b00000001,
    0b11110110,
    0b11110110,
    0b11110110,
    0b00000001},//10-A
   {0b00000000,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001001},//11-B
   {0b10000001,
    0b01111110,
    0b01111110,
    0b01111110,
    0b10111101},//12-C
   {0b00000000,
    0b01111110,
    0b01111110,
    0b10111101,
    0b11000011},//13-D
   {0b00000000,
    0b01110110,
    0b01110110,
    0b01110110,
    0b01111110},//14-E
   {0b00000000,
    0b11110110,
    0b11110110,
    0b11110110,
    0b11111110},//15-F
   {0b10000001,
    0b01111110,
    0b01110110,
    0b01110110,
    0b10000101},//16-G
   {0b00000000,
    0b11110111,
    0b11110111,
    0b11110111,
    0b00000000},//17-H
   {0b11111111,
    0b01111110,
    0b00000000,
    0b01111110,
    0b11111111},//18-I
   {0b11111110,
    0b01111110,
    0b01111110,
    0b10000000,
    0b11111110},//19-J
   {0b00000000,
    0b11110111,
    0b11101011,
    0b11011101,
    0b00111110},//20-K
   {0b00000000,
    0b01111111,
    0b01111111,
    0b01111111,
    0b01111111},//21-L
   {0b00000000,
    0b11111110,
    0b11000000,
    0b11111110,
    0b00000001},//22-M
   {0b00000000,
    0b11111110,
    0b10000001,
    0b01111111,
    0b00000000},//23-N
   {0b10000001,
    0b01111110,
    0b01111110,
    0b01111110,
    0b10000001},//24-O
   {0b00000000,
    0b11110110,
    0b11110110,
    0b11110110,
    0b11111001},//25-P
   {0b10000001,
    0b01111110,
    0b01011110,
    0b10111110,
    0b01000001},//26-Q
   {0b00000000,
    0b11110110,
    0b11100110,
    0b11010110,
    0b00111001},//27-R
   {0b10111001,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001101},//28-S
   {0b11111110,
    0b11111110,
    0b00000000,
    0b11111110,
    0b11111110},//29-T
   {0b10000000,
    0b01111111,
    0b01111111,
    0b01111111,
    0b10000000},//30-U
   {0b11100000,
    0b10011111,
    0b01111111,
    0b10011111,
    0b11100000},//31-V
   {0b10000000,
    0b01111111,
    0b10000111,
    0b01111111,
    0b10000000},//32-W
   {0b00011100,
    0b11101011,
    0b11110111,
    0b11101011,
    0b00011100},//33-X
   {0b11111100,
    0b11110011,
    0b00001111,
    0b11110011,
    0b11111100},//34-Y
   {0b00111110,
    0b01010110,
    0b01100110,
    0b01101010,
    0b01111100},//35-Z
   {0b11101111,
    0b11010111,
    0b10111011,
    0b01111101,
    0b11111111},//36 <
   {0b11111111,
    0b01111101,
    0b10111011,
    0b11010111,
    0b11101111},//37 >
   {0b11111111,
    0b11111111,
    0b01000000,
    0b11111111,
    0b11111111},//38 !
   {0b11111101,
    0b11111110,
    0b01001110,
    0b11110110,
    0b11111001},//39 ?
   {0b11111101,
    0b11111110,
    0b01001110,
    0b11110110,
    0b11111001},//40 ?
   {0b11110111,
    0b11110111,
    0b11110111,
    0b11110111,
    0b11110111},//41 -
   {0b01111111,
    0b01111111,
    0b01111111,
    0b01111111,
    0b01111111},//42 _
   {0b11110111,
    0b11110111,
    0b11000001,
    0b11110111,
    0b11110111},//43 +
   {0b11011011,
    0b11011011,
    0b11011011,
    0b11011011,
    0b11011011},//44 =
   {0b11111111,
    0b11111111,
    0b11011011,
    0b11111111,
    0b11111111},//45 :
   {0b10001111,
    0b01110001,
    0b01001110,
    0b10111110,
    0b01001101},//46 &
   {0b11011011,
    0b00000000,
    0b11011011,
    0b00000000,
    0b11011011},//47 #
   {0b10000001,
    0b01100110,
    0b01011010,
    0b01000110,
    0b11100001},//48 @
   {0b11000111,
    0b10000011,
    0b10000011,
    0b10000011,
    0b11000111},//49 cdot
   {0b10111011,
    0b11011111,
    0b11101111,
    0b11110111,
    0b10111011},//50 %
   {0b11011011,
    0b10110101,
    0b00000000,
    0b10101101,
    0b11011011},//51 $
   {0b11111111,
    0b11111111,
    0b11111111,
    0b11111111,
    0b11111111},//52 _space_
};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_ADC_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

uint8_t ttt = 0;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
    if(GPIO_Pin == GPIO_PIN_11) {
        SET_LED(2 + ttt);
    } else if(GPIO_Pin == GPIO_PIN_12) {
        SET_LED(4 + ttt);
    }
}

/**
  * @brief  Displays the string on LEDs.
  * @param  str: character index array
  * @retval None
  */
void showText(const uint8_t str[]) {
    for(unsigned character=0; character<sizeof(*str); ++character) {
        for(uint8_t line=0; line<8; ++line) {
            SET_LED(CHARS[str[character]][line]);
            HAL_Delay(_SPACE_LINE_INTERVAL); //Pixel line width
        }
        HAL_Delay(_SPACE_CHAR_INTERVAL); //Char spacing width
    }
}
//example: str = [0,6,4,52,27,25,22] -> "064 RPM"

//void SysTick_Handler() {
    //
//}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC_Init();
  /* USER CODE BEGIN 2 */

    //SysTick_Config(32000); //32kHz, 1s
    //

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while(1) {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_5;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC_Init(void)
{

  /* USER CODE BEGIN ADC_Init 0 */

  /* USER CODE END ADC_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC_Init 1 */

  /* USER CODE END ADC_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc.Instance = ADC1;
  hadc.Init.OversamplingMode = DISABLE;
  hadc.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV1;
  hadc.Init.Resolution = ADC_RESOLUTION_12B;
  hadc.Init.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  hadc.Init.ScanConvMode = ADC_SCAN_DIRECTION_FORWARD;
  hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc.Init.ContinuousConvMode = DISABLE;
  hadc.Init.DiscontinuousConvMode = DISABLE;
  hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc.Init.DMAContinuousRequests = DISABLE;
  hadc.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc.Init.LowPowerAutoWait = DISABLE;
  hadc.Init.LowPowerFrequencyMode = ENABLE;
  hadc.Init.LowPowerAutoPowerOff = DISABLE;
  if (HAL_ADC_Init(&hadc) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel to be converted.
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = ADC_RANK_CHANNEL_NUMBER;
  if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC_Init 2 */

  /* USER CODE END ADC_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7, GPIO_PIN_RESET);

  /*Configure GPIO pins : PC14 PC15 */
  GPIO_InitStruct.Pin = GPIO_PIN_14|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : PA0 PA1 PA2 PA3
                           PA4 PA5 PA6 PA7 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB0 PB3 PB4 PB5
                           PB6 PB7 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5
                          |GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PA8 PA9 PA10 PA13
                           PA14 PA15 */
  GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_13
                          |GPIO_PIN_14|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PA11 */
  GPIO_InitStruct.Pin = GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PA12 */
  GPIO_InitStruct.Pin = GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI4_15_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
