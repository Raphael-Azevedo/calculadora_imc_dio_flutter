import 'package:flutter/material.dart';
import 'package:imc_2_0/data/data.dart';
import 'package:imc_2_0/pages/result/result_page.dart';
import 'package:imc_2_0/shared/widgets/default_bottom_app_bar.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class InfoPage extends StatefulWidget {
  static String route = '/InfoPage';

  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool isMale = ImcResultData.isMale ?? true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, ResultPage.route, (route) => false);
          },
        ),
        foregroundColor: AppColor.whiteText,
        backgroundColor: AppColor.purpleLight,
        title: const Text(
          'Info',
          style: TextStyle(color: AppColor.whiteText),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(children: [
            const Text(
              '''
              O Índice de Massa Corporal (IMC) é uma medida utilizada para avaliar a relação entre o peso e a altura de uma pessoa. É uma ferramenta valiosa na avaliação do estado geral de saúde e bem-estar. O IMC é amplamente utilizado em todo o mundo como um indicador simples para identificar possíveis problemas de peso e riscos à saúde.
            
              É importante ressaltar que o IMC é uma medida geral e que não leva em consideração fatores individuais como composição corporal, massa muscular, distribuição de gordura, entre outros. Portanto, é recomendável que o IMC seja usado em conjunto com outras avaliações de saúde para obter uma imagem completa da condição física de alguém.
                  ''',
              style: TextStyle(fontSize: 16, color: AppColor.whiteText),
            ),
            const Text(
              'Entenda seu Resultado',
              style: TextStyle(
                  color: AppColor.purpleLight,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_01.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_01.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Acima de 40,0',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Obesidade grau III',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Aqui o sinal é vermelho, com forte probabilidade de já existirem doenças muito graves associadas. O tratamento deve ser ainda mais urgente.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_02.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_02.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Entre 35,0 e 39,9',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Obesidade grau II',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Mesmo que seus exames aparentem estar normais, é hora de se cuidar, iniciando mudanças no estilo de vida com o acompanhamento próximo de profissionais de saúde.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_03.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_03.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Entre 30,0 e 34,9',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Obesidade grau I',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Sinal de alerta! Chegou na hora de se cuidar, mesmo que seus exames sejam normais. Vamos dar início a mudanças hoje! Cuide de sua alimentação. Você precisa iniciar um acompanhamento com nutricionista e/ou endocrinologista.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_04.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_04.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Entre 25,0 e 29,9',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Sobrepeso',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Ele é, na verdade, uma pré-obesidade e muitas pessoas nessa faixa já apresentam doenças associadas, como diabetes e hipertensão. Importante rever hábitos e buscar ajuda antes de, por uma série de fatores, entrar na faixa da obesidade pra valer.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_05.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_05.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Entre 18,6 e 24,9',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Normal',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Que bom que você está com o peso normal! E o melhor jeito de continuar assim é mantendo um estilo de vida ativo e uma alimentação equilibrada.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const SizedBox(height: 18),
            isMale
                ? Image.asset(
                    'assets/images/imc_06.png',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/images/imc_m_06.png',
                    fit: BoxFit.contain,
                  ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                '18,5 ou menos',
                style: TextStyle(color: AppColor.whiteText),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                'Abaixo do normal',
                style: TextStyle(color: AppColor.purpleLight, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 4),
              child: const Text(
                textAlign: TextAlign.center,
                'Procure um médico. Algumas pessoas têm um baixo peso por características do seu organismo e tudo bem. Outras podem estar enfrentando problemas, como a desnutrição. É preciso saber qual é o caso.',
                style: TextStyle(color: AppColor.whiteText),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: const DefaultBottomAppBar(),
    );
  }
}
