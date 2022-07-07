#Gherkin
Feature: Find restaurant
  #Позитивный сценарий: выбираем город Воронеж и получем меню для Воронежа
  Scenario: chose restaurant city
    Given url of restaurant 'https://dodopizza.ru/'
    Then  chose city 'Воронеж'
    And assert that chosen city is 'Воронеж'
  #Негатинвый сценарий: выбираем несушествующий город, получаем соответствуещее уведомление
  Scenario: chose absent city
    Given url of restaurant 'https://dodopizza.ru/'
    Then  chose city 'ГеоргиюДеж'
    And assert that user got message 'Пиццерия в этом городе еще не открылась'