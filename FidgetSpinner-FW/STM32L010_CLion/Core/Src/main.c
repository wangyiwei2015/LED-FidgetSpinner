/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
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
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
static const uint8_t CHARS[52][8] = {
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
    0b00000001},//A
   {0b00000000,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001001},//B
   {0b10000001,
    0b01111110,
    0b01111110,
    0b01111110,
    0b10111101},//C
   {0b00000000,
    0b01111110,
    0b01111110,
    0b10111101,
    0b11000011},//D
   {0b00000000,
    0b01110110,
    0b01110110,
    0b01110110,
    0b01111110},//E
   {0b00000000,
    0b11110110,
    0b11110110,
    0b11110110,
    0b11111110},//F
   {0b10000001,
    0b01111110,
    0b01110110,
    0b01110110,
    0b10000101},//G
   {0b00000000,
    0b11110111,
    0b11110111,
    0b11110111,
    0b00000000},//H
   {0b11111111,
    0b01111110,
    0b00000000,
    0b01111110,
    0b11111111},//I
   {0b11111110,
    0b01111110,
    0b01111110,
    0b10000000,
    0b11111110},//J
   {0b00000000,
    0b11110111,
    0b11101011,
    0b11011101,
    0b00111110},//K
   {0b00000000,
    0b01111111,
    0b01111111,
    0b01111111,
    0b01111111},//L
   {0b00000000,
    0b11111110,
    0b11000000,
    0b11111110,
    0b00000001},//M
   {0b00000000,
    0b11111110,
    0b10000001,
    0b01111111,
    0b00000000},//N
   {0b10000001,
    0b01111110,
    0b01111110,
    0b01111110,
    0b10000001},//O
   {0b00000000,
    0b11110110,
    0b11110110,
    0b11110110,
    0b11111001},//P
   {0b10000001,
    0b01111110,
    0b01011110,
    0b10111110,
    0b01000001},//Q
   {0b00000000,
    0b11110110,
    0b11100110,
    0b11010110,
    0b00111001},//R
   {0b10111001,
    0b01110110,
    0b01110110,
    0b01110110,
    0b10001101},//S
   {0b11111110,
    0b11111110,
    0b00000000,
    0b11111110,
    0b11111110},//T
   {0b10000000,
    0b01111111,
    0b01111111,
    0b01111111,
    0b10000000},//U
   {0b11100000,
    0b10011111,
    0b01111111,
    0b10011111,
    0b11100000},//V
   {0b10000000,
    0b01111111,
    0b10000111,
    0b01111111,
    0b10000000},//W
   {0b00011100,
    0b11101011,
    0b11110111,
    0b11101011,
    0b00011100},//X
   {0b11111100,
    0b11110011,
    0b00001111,
    0b11110011,
    0b11111100},//Y
   {0b00111110,
    0b01010110,
    0b01100110,
    0b01101010,
    0b01111100},//Z
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
   {0b11100111,
    0b11000011,
    0b10000111,
    0b11000011,
    0b11100111},//50 heart
   {0b11011011,
    0b10110101,
    0b00000000,
    0b10101101,
    0b11011011},//51 $
};

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

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
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
  /* USER CODE BEGIN 2 */

    //SysTick_Config(32000); //32kHz, 1s
    //

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  //SET_LED(0b01010101);
  //while(1);

  while(1)
  {
      ttt = ~ttt;
      SET_LED(ttt);
      HAL_Delay(1000); //in ms
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
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3); //1 = highest volt
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
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7, GPIO_PIN_RESET);

  /*Configure GPIO pins : PA0 PA1 PA2 PA3
                           PA4 PA5 PA6 PA7 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3
                          |GPIO_PIN_4|GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_OD;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
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
