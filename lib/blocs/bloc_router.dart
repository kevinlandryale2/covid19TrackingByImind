import 'package:covid19byimindcorp/blocs/bloc_countries.dart';
import 'package:covid19byimindcorp/blocs/bloc_provider.dart';
import 'package:covid19byimindcorp/ui/screen/home_screen.dart';

class BlocRouter{

  BlocProvider allCountries()=> BlocProvider<BlocCountries>(bloc: BlocCountries(), child: HomeScreen());
}