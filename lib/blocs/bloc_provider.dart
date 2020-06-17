import 'package:covid19byimindcorp/blocs/bloc.dart';
import 'package:flutter/cupertino.dart';
class BlocProvider <T extends Bloc> extends  StatefulWidget{
  final T bloc;
  final Widget child;
  BlocProvider({@required this.bloc, @required this.child});
  State createState()=> _BlocProviderState();
  static Type _providerType<T>()=>T;
  static T of<T extends Bloc>(BuildContext context){
    final BlocProvider<T> _provider = context.findAncestorWidgetOfExactType<BlocProvider<T>>();
    return _provider.bloc;
  }
}
class _BlocProviderState extends State<BlocProvider>{
  @override
  Widget build(BuildContext context) => widget.child;
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}