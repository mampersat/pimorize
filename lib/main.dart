import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Pimorize());

class Pimorize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO Accept keyboard input for web version
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(title: Text('PiMoRize')),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: KeyPadPage(),
          ),
        ),
      ),
    );
  }
}

class KeyPadPage extends StatefulWidget {
  @override
  _KeyPadPageState createState() => _KeyPadPageState();
}

class _KeyPadPageState extends State<KeyPadPage> {
  String piString =
      '3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786783165271201909145648566923460348610454326648213393607260249141273724587006606315588174881520920962829254091715364367892590360011330530548820466521384146951941511609433057270365759591953092186117381932611793105118548074462379962749567351885752724891227938183011949129833673362440656643086021394946395224737190702179860943702770539217176293176752384674818467669405132000568127145263560827785771342757789609173637178721468440901224953430146549585371050792279689258923542019956112129021960864034418159813629774771309960518707211349999998372978049951059731732816096318595024459455346908302642522308253344685035261931188171010003137838752886587533208381420617177669147303598253490428755468731159562863882353787593751957781857780532171226806613001927876611195909216420198938095257201065485863278865936153381827968230301952035301852968995773622599413891249721775283479131515574857242454150695950829533116861727855889075098381754637464939319255060400927701671139009848824012858361603563707660104710181942955596198946767837449448255379774726847104047534646208046684259069491293313677028989152104752162056966024058038150193511253382430035587640247496473263914199272604269922796782354781636009341721641219924586315030286182974555706749838505494588586926995690927210797509302955321165344987202755960236480665499119881834797753566369807426542527862551818417574672890977772793800081647060016145249192173217214772350141441973568548161361157352552133475741849468438523323907394143334547762416862518983569485562099219222184272550254256887671790494601653466804988627232791786085784383827967976681454100953883786360950680064225125205117392984896084128488626945604241965285022210661186306744278622039194945047123713786960956364371917287467764657573962413890865832645995813390478027590099465764078951269468398352595709825822620522489407726719478268482601476990902640136394437455305068203496252451749399651431429809190659250937221696461515709858387410597885959772975498930161753928468138268683868942774155991855925245953959431049972524680845987273644695848653836736222626099124608051243884390451244136549762780797715691435997700129616089441694868555848406353422072225828488648158456028506016842739452267467678895252138522549954666727823986456596116354886230577456498035593634568174324112515076069479451096596094025228879710893145669136867228748940560101503308617928680920874760917824938589009714909675985261365549781893129784821682998948722658804857564014270477555132379641451523746234364542858444795265867821051141354735739523113427166102135969536231442952484937187110145765403590279934403742007310578539062198387447808478489683321445713868751943506430218453191048481005370614680674919278191197939952061419663428754440643745123718192179998391015919561814675142691239748940907186494231961567945208095146550225231603881930142093762137855956638937787083039069792077346722182562599661501421503068038447734549202605414665925201497442850732518666002132434088190710486331734649651453905796268561005508106658796998163574736384052571459102897064140110971206280439039759515677157700420337869936007230558763176359421873125147120532928191826186125867321579198414848829164470609575270695722091756711672291098169091528017350671274858322287183520935396572512108357915136988209144421006751033467110314126711136990865851639831501970165151168517143765761835155650884909989859982387345528331635507647918535893226185489632132933089857064204675259070915481416549859461637180270981994309924488957571282890592323326097299712084433573265489382391193259746366730583604142813883032038249037589852437441702913276561809377344403070746921120191302033038019762110110044929321516084244485963766983895228684783123552658213144957685726243344189303968642624341077322697802807318915441101044682325271620105265227211166039666557309254711055785376346682065310989652691862056476931257058635662018558100729360659876486117910453348850346113657686753249441668039626579787718556084552965412665408530614344431858676975145661406800700237877659134401712749470420562230538994561314071127000407854733269939081454664645880797270826683063432858785698305235808933065757406795457163775254202114955761581400250126228594130216471550979259230990796547376125517656751357517829666454779174501129961489030463994713296210734043751895735961458901938971311179042978285647503203198691514028708085990480109412147221317947647772622414254854540332157185306142288137585043063321751829798662237172159160771669254748738986654949450114654062843366393790039769265672146385306736096571209180763832716641627488880078692560290228472104031721186082041900042296617119637792133757511495950156604963186294726547364252308177036751590673502350728354056704038674351362222477158915049530984448933309634087807693259939780541934144737744184263129860809988868741326047215695162396586457302163159819319516735381297416772947867242292465436680098067692823828068996400482435403701416314965897940924323789690706977942236250822168895738379862300159377647165122893578601588161755782973523344604281512627203734314653197777416031990665541876397929334419521541341899485444734567383162499341913181480927777103863877343177207545654532207770921201905166096280490926360197598828161332316663652861932668633606273567630354477628035045077723554710585954870279081435624014517180624643626794561275318134078330336254232783944975382437205835311477119926063813346776879695970309833913077109870408591337464144282277263465947047458784778720192771528073176790770715721344473060570073349243693113835049316312840425121925651798069411352801314701304781643788518529092854520116583934196562134914341595625865865570552690496520985803385072242648293972858478316305777756068887644624824685792603953527734803048029005876075825104747091643961362676044925627420420832085661190625454337213153595845068772460290161876679524061634252257719542916299193064553779914037340432875262888963995879475729174642635745525407909145135711136941091193932519107602082520261879853188770584297259167781314969900901921169717372784768472686084900337702424291651300500516832336435038951702989392233451722013812806965011784408745196012122859937162313017114448464090389064495444006198690754851602632750529834918740786680881833851022833450850486082503930213321971551843063545500766828294930413776552793975175461395398468339363830474611996653858153842056853386218672523340283087112328278921250771262946322956398989893582116745627010218356462201349671518819097303811980049734072396103685406643193950979019069963955245300545058068550195673022921913933918568034490398205955100226353536192041994745538593810234395544959778377902374216172711172364343543947822181852862408514006660443325888569867054315470696574745855033232334210730154594051655379068662733379958511562578432298827372319898757141595781119635833005940873068121602876496286744604774649159950549737425626901049037781986835938146574126804925648798556145372347867330390468838343634655379498641927056387293174872332083760112302991136793862708943879936201629515413371424892830722012690147546684765357616477379467520049075715552781965362132392640616013635815590742202020318727760527721900556148425551879253034351398442532234157623361064250639049750086562710953591946589751413103482276930624743536325691607815478181152843667957061108615331504452127473924544945423682886061340841486377670096120715124914043027253860764823634143346235189757664521641376796903149501910857598442391986291642193994907236234646844117394032659184044378051333894525742399508296591228508555821572503107125701266830240292952522011872676756220415420516184163484756516999811614101002996078386909291603028840026910414079288621507842451670908700069928212066041837180653556725253256753286129104248776182582976515795984703562226293486003415872298053498965022629174878820273420922224533985626476691490556284250391275771028402799806636582548892648802545661017296702664076559042909945681506526530537182941270336931378517860904070866711496558343434769338578171138645587367812301458768712660348913909562009939361031029161615288138437909904231747336394804575931493140529763475748119356709110137751721008031559024853090669203767192203322909433467685142214477379393751703443661991040337511173547191855046449026365512816228824462575916333039107225383742182140883508657391771509682887478265699599574490661758344137522397096834080053559849175417381883999446974867626551658276584835884531427756879002909517028352971634456212964043523117600665101241200659755851276178583829204197484423608007193045761893234922927965019875187212726750798125547095890455635792122103334669749923563025494780249011419521238281530911407907386025152274299581807247162591668545133312394804947079119153267343028244186041426363954800044800267049624820179289647669758318327131425170296923488962766844032326092752496035799646925650493681836090032380929345958897069536534940603402166544375589004563288225054525564056448246515187547119621844396582533754388569094113031509526179378002974120766514793942590298969594699556576121865619673378623625612521632086286922210327488921865436480229678070576561514463204692790682120738837781423356282360896320806822246801224826117718589638140918390367367222088832151375560037279839400415297002878307667094447456013455641725437090697939612257142989467154357846878861444581231459357198492252847160504922124247014121478057345510500801908699603302763478708108175450119307141223390866393833952942578690507643100638351983438934159613185434754649556978103829309716465143840700707360411237359984345225161050702705623526601276484830840761183013052793205427462865403603674532865105706587488225698157936789766974220575059683440869735020141020672358502007245225632651341055924019027421624843914035998953539459094407046912091409387001264560016237428802109276457931065792295524988727584610126483699989225695968815920560010165525637567856672279661988578279484885583439751874454551296563443480396642055798293680435220277098429423253302257634180703947699415979159453006975214829336655566156787364005366656416547321704390352132954352916941459904160875320186837937023488868947915107163785290234529244077365949563051007421087142613497459561513849871375704710178795731042296906667021449863746459528082436944578977233004876476524133907592043401963403911473202338071509522201068256342747164602433544005152126693249341967397704159568375355516673027390074972973635496453328886984406119649616277344951827369558822075735517665158985519098666539354948106887320685990754079234240230092590070173196036225475647894064754834664776041146323390565134330684495397907090302346046147096169688688501408347040546074295869913829668246818571031887906528703665083243197440477185567893482308943106828702722809736248093996270607472645539925399442808113736943388729406307926159599546262462970706259484556903471197299640908941805953439325123623550813494900436427852713831591256898929519642728757394691427253436694153236100453730488198551706594121735246258954873016760029886592578662856124966552353382942878542534048308330701653722856355915253478445981831341129001999205981352205117336585640782648494276441137639386692480311836445369858917544264739988228462184490087776977631279572267265556259628254276531830013407092233436577916012809317940171859859993384923549564005709955856113498025249906698423301735035804408116855265311709957089942732870925848789443646005041089226691783525870785951298344172953519537885534573742608590290817651557803905946408735061232261120093731080485485263572282576820341605048466277504500312620080079980492548534694146977516493270950493463938243222718851597405470214828971117779237612257887347718819682546298126868581705074027255026332904497627789442362167411918626943965067151577958675648239939176042601763387045499017614364120469218237076488783419689686118155815873606293860381017121585527266830082383404656475880405138080163363887421637140643549556186896411228214075330265510042410489678352858829024367090488711819090949453314421828766181031007354770549815968077200947469613436092861484941785017180779306810854690009445899527942439813921350558642219648349151263901280383200109773868066287792397180146134324457264009737425700735921003154150893679300816998053652027600727749674584002836240534603726341655425902760183484030681138185510597970566400750942608788573579603732451414678670368809880609716425849759513806930944940151542222194329130217391253835591503100333032511174915696917450271494331515588540392216409722910112903552181576282328318234254832611191280092825256190205263016391147724733148573910777587442538761174657867116941477642144111126358355387136101102326798775641024682403226483464176636980663785768134920453022408197278564719839630878154322116691224641591177673225326433568614618654522268126887268445968442416107854016768142080885028005414361314623082102594173756238994207571362751674573189189456283525704413354375857534269869947254703165661399199968262824727064133622217892390317608542894373393561889165125042440400895271983787386480584726895462438823437517885201439560057104811949884239060613695734231559079670346149143447886360410318235073650277859089757827273130504889398900992391350337325085598265586708924261242947367019390772713070686917092646254842324074855036608013604668951184009366860954632500214585293095000090715105823626729326453738210493872499669933942468551648326113414611068026744663733437534076429402668297386522093570162638464852851490362932019919968828517183953669134522244470804592396602817156551565666111359823112250628905854914509715755390024393153519090210711945730024388017661503527086260253788179751947806101371500448991721002220133501310601639154158957803711779277522597874289191791552241718958536168059474123419339842021874564925644346239253195313510331147639491199507285843065836193536932969928983791494193940608572486396883690326556436421664425760791471086998431573374964883529276932822076294728238153740996154559879825989109371712621828302584811238901196822142945766758071865380650648702613389282299497257453033283896381843944770779402284359883410035838542389735424395647555684095224844554139239410001620769363684677641301781965937997155746854194633489374843912974239143365936041003523437770658886778113949861647874714079326385873862473288964564359877466763847946650407411182565837887845485814896296127399841344272608606187245545236064315371011274680977870446409475828034876975894832824123929296058294861919667091895808983320121031843034012849511620353428014412761728583024355983003204202451207287253558119584014918096925339507577840006746552603144616705082768277222353419110263416315714740612385042584598841990761128725805911393568960143166828317632356732541707342081733223046298799280490851409479036887868789493054695570307261900950207643349335910602454508645362893545686295853131533718386826561786227363716975774183023986006591481616404944965011732131389574706208847480236537103115089842799275442685327797431139514357417221975979935968525228574526379628961269157235798662057340837576687388426640599099350500081337543245463596750484423528487470144354541957625847356421619813407346854111766883118654489377697956651727966232671481033864391375186594673002443450054499539974237232871249483470604406347160632583064982979551010954183623503030945309733583446283947630477564501500850757894954893139394489921612552559770143685894358587752637962559708167764380012543650237141278346792610199558522471722017772370041780841942394872540680155603599839054898572354674564239058585021671903139526294455439131663134530893906204678438778505423939052473136201294769187497519101147231528932677253391814660730008902776896311481090220972452075916729700785058071718638105496797310016787085069420709223290807038326345345203802786099055690013413718236837099194951648960075504934126787643674638490206396401976668559233565463913836318574569814719621084108096188460545603903845534372914144651347494078488442377217515433426030669883176833100113310869042193903108014378433415137092435301367763108491351615642269847507430329716746964066653152703532546711266752246055119958183196376370761799191920357958200759560530234626775794393630746305690108011494271410093913691381072581378135789400559950018354251184172136055727522103526803735726527922417373605751127887218190844900617801388971077082293100279766593583875890939568814856026322439372656247277603789081445883785501970284377936240782505270487581647032458129087839523245323789602984166922548964971560698119218658492677040395648127810217991321741630581055459880130048456299765112124153637451500563507012';

  String guessed = '';

  int strikes = 0;
  String hint = '';
  int record = 0;

  Widget numberButton({String text}) {
    Color color = Colors.white;

    if (text == hint) {
      color = Colors.green;
    }

    return FlatButton(
      color: color,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 45.0,
        ),
      ),
      onPressed: () {
        guess(text);
      },
    );
  }

  updateRecord(record) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('record', record);
  }

  void guess(String guess) {
    setState(() {
      hint = '';

      if (guess == piString[guessed.length]) {
        guessed += guess;
        if (guessed.length > record) {
          // TODO store record so it persists
          // TODO publish record to some kind of score keeping website
          record = guessed.length;
        }
      } else {
        strikes++;

        // Two strikes - give a hint
        if (strikes == 2) {
          hint = piString[guessed.length];
        }

        // Three strikes - you're out - reset the app
        // but give a clear "This was the next number" clue
        if (strikes == 3) {
          // TODO show alert with correct answer
          // TODO Fanfare for breaking record
          updateRecord(record);
          guessed = '';
          strikes = 0;
        }
      }
    });
  }

  Widget strike({int position}) {
    Color color = Colors.teal;

    if (position <= strikes) {
      color = Colors.red;
    }

    return Icon(
      Icons.cancel,
      size: 65,
      color: color,
    );
  }

  _getRecord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      record = (prefs.getInt('record') ?? 0);
    });
  }

  @override
  void initState() {
    _getRecord();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // TODO: Add pi symbol = here
        // TODO: Make this scrollable
        Text(
          'Π=' + guessed,
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.white,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            strike(position: 1),
            strike(position: 2),
            strike(position: 3),
          ],
        ),
        // TODO: Make buttons taller, fill row
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numberButton(text: '7'),
            numberButton(text: '8'),
            numberButton(text: '9'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numberButton(text: '4'),
            numberButton(text: '5'),
            numberButton(text: '6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numberButton(text: '1'),
            numberButton(text: '2'),
            numberButton(text: '3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            numberButton(text: '0'),
            numberButton(text: '.'),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Current = ' + guessed.length.toString(),
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            Text(
              'Record = ' + record.toString(),
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
