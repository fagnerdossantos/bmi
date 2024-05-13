enum BMIStatsLabel {
  underweight,
  normal,
  overweight,
  obesity,
  severeObesity;

  String get labelEN => switch (this) {
        BMIStatsLabel.underweight => "underweight",
        BMIStatsLabel.normal => "normal",
        BMIStatsLabel.overweight => "overweight",
        BMIStatsLabel.obesity => "obesity",
        BMIStatsLabel.severeObesity => "severe-obesity",
      };

  String get labelPT => switch (this) {
        BMIStatsLabel.underweight => "Magreza",
        BMIStatsLabel.normal => "Normal",
        BMIStatsLabel.overweight => "Sobrepeso",
        BMIStatsLabel.obesity => "Obesidade",
        BMIStatsLabel.severeObesity => "Obesidade Severa",
      };
}

Map<String, Map<String, dynamic>> bmiStatsList = {
  "underweight": {
    "bmiRange": "Menor que 18,5",
    "message":
        "Seu IMC indica que você está abaixo do peso ideal. É importante buscar orientação médica e nutricional para garantir uma alimentação saudável e balanceada, evitando riscos à saúde.",
    "tips": [
      "Aumente o consumo de calorias de forma saudável, incluindo alimentos ricos em proteínas, carboidratos complexos e gorduras boas.",
      "Consulte um nutricionista para elaborar um plano alimentar personalizado.",
      "Pratique exercícios físicos regularmente, mas com acompanhamento profissional se necessário.",
      "Evite dietas restritivas e foque em uma alimentação completa e nutritiva."
    ]
  },
  "normal": {
    "bmiRange": "Entre 18,5 e 24,9",
    "message":
        "Parabéns! Seu IMC está na faixa ideal, o que significa que você tem um bom equilíbrio entre peso e altura. Continue mantendo hábitos saudáveis para preservar sua saúde e bem-estar.",
    "tips": [
      "Mantenha uma dieta balanceada e rica em nutrientes.",
      "Pratique exercícios físicos regularmente, de acordo com sua preferência e nível de condicionamento físico.",
      "Monitore seu peso e IMC periodicamente para garantir que se mantenha na faixa ideal.",
      "Beba bastante água e durma bem para ter mais disposição e energia."
    ]
  },
  "overweight": {
    "bmiRange": "Entre 25,0 e 29,9",
    "message":
        "Seu IMC indica que você está acima do peso ideal, o que pode aumentar o risco de problemas de saúde. Adotar hábitos saudáveis como dieta balanceada e exercícios físicos regulares pode te ajudar a alcançar um peso ideal e melhorar sua qualidade de vida.",
    "tips": [
      "Consulte um nutricionista para elaborar um plano alimentar personalizado que atenda às suas necessidades.",
      "Aumente a ingestão de frutas, legumes, verduras e grãos integrais.",
      "Reduza o consumo de alimentos processados, açúcares e gorduras saturadas.",
      "Pratique exercícios físicos pelo menos 30 minutos por dia, a maioria dos dias da semana.",
      "Faça pequenas mudanças em seus hábitos gradativamente para aumentar a chance de sucesso."
    ]
  },
  "obesity": {
    "bmiRange": "Entre 30,0 e 39,9",
    "message":
        "Seu IMC indica que você está em estado de obesidade, o que pode trazer diversos riscos à saúde. É importante buscar ajuda profissional (médico e nutricionista) para elaborar um plano personalizado de tratamento e alcançar um peso saudável de forma segura e eficaz.",
    "tips": [
      "Procure um médico para avaliar sua saúde geral e identificar possíveis comorbidades.",
      "Consulte um nutricionista para receber orientação sobre alimentação saudável e adequada às suas necessidades.",
      "Aumente a prática de atividades físicas com acompanhamento profissional, se necessário.",
      "Faça mudanças em seus hábitos gradativamente, com foco em longo prazo.",
      "Busque apoio de familiares, amigos ou grupos de apoio para se manter motivado."
    ]
  },
  "severe-obesity": {
    "bmiRange": "Maior que 40,0",
    "message":
        "Seu IMC indica que você está em estado de obesidade grave, o que exige atenção médica imediata. É fundamental buscar acompanhamento especializado (médico, nutricionista, psicólogo) para implementar um plano abrangente de tratamento e alcançar um peso saudável de forma segura e eficaz, com foco na melhora da sua saúde e qualidade de vida.",
    "tips": [
      "Procure um médico o mais rápido possível para avaliação médica completa e tratamento adequado.",
      "Consulte um nutricionista para receber orientação nutricional personalizada e acompanhamento durante o processo de emagrecimento.",
      "Busque apoio psicológico para lidar com os desafios emocionais e comportamentais relacionados à obesidade.",
      "Adote um estilo de vida saudável com foco em longo prazo, incluindo mudanças na alimentação, prática de atividades físicas e gerenciamento do estresse.",
    ]
  }
};
