import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'letters_list_model.dart';
export 'letters_list_model.dart';

class LettersListWidget extends StatefulWidget {
  const LettersListWidget({Key? key}) : super(key: key);

  @override
  _LettersListWidgetState createState() => _LettersListWidgetState();
}

class _LettersListWidgetState extends State<LettersListWidget> {
  late LettersListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LettersListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Vocabulary',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () async {
                      context.pushNamed('Vocab_A');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.white,
                      elevation: 10.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://www.shutterstock.com/image-vector/abc-alphabet-animated-letters-colours-260nw-1683046198.jpg',
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 180.0,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Text(
                              'Letter A',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      context.pushNamed('VocabE');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryText,
                      elevation: 10.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://c8.alamy.com/comp/2C8NBTF/funny-hand-drawn-cartoon-styled-font-colorful-letter-e-with-smiling-face-vector-alphabet-illustration-isolated-on-white-good-for-kids-learning-activi-2C8NBTF.jpg',
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Text(
                              'Letter E',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      context.pushNamed('Letter_O');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryText,
                      elevation: 10.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://i.pinimg.com/474x/ef/75/e2/ef75e203c52375009b5b02fa0bbc64ba.jpg',
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Text(
                              'Letter O',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      context.pushNamed('Letter_O');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.white,
                      elevation: 10.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://media.istockphoto.com/id/1353565641/vector/vector-isolated-template-cartoon-letter-i-of-the-english-alphabet.jpg?s=612x612&w=0&k=20&c=27i8Uuv2wPJUSDc5uZ_OtVQzyp_vT7Njnymamvm7cyE=',
                            width: MediaQuery.of(context).size.width * 1.0,
                            height: 180.0,
                            fit: BoxFit.contain,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Text(
                              'Letter I',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      context.pushNamed('letter_U');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).primaryText,
                      elevation: 10.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxMRExYQFBQWFhYZFhoaGRoWFhsWGRoZGhYdGxgaGR8aKysiGiApHRkaIzQjKCwuMTEyGSI3PDcwOyswMS4BCwsLDw4PHRERHTIoISEzMC4wLjAwMDA5MzA2LjA0Oi46LjAwMDAuLjAwLjAwMDA5MDAwMDAwMDAwMDAwMC4wLv/AABEIAOkA2AMBIgACEQEDEQH/xAAcAAEAAwEBAQEBAAAAAAAAAAAABgcIBQMEAgH/xABJEAABAwEEBwUDCQYDCAMBAAABAAIDEQQFEiEGBxMiMUFRUmFxgZEycqEIFCNCYoKiscEzQ5Kys8IlY8MVNDVTZJOj0SR08Bb/xAAaAQEAAgMBAAAAAAAAAAAAAAAAAgMBBAUG/8QALREBAAICAQIGAAUEAwAAAAAAAAECAxESBDEFIUFRYXETIqHR8DKBscEUUpH/2gAMAwEAAhEDEQA/ALmREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERARFCtINa12WMlhmMzxxbA3aUPvEhnliQTVFUVp1/wA/R2OVw+3K1n5By9bJr9sx/aWWdvuOY/wDPCgthFCbn1uXXaCG7cwuPKZhYPNwqwfxKX2a0slaJI3te1wqHMcHNI6gjIoPdERAREQEREBERAREQERfBab6s0X7SeFnvysb+ZQfei5cOkljeaMtVncejZoz+RXQila4Va4OHUEEfBB6IiICIiAiIgIiIKU176byiQ3XC7CwMBnLTQuLhUR9zcJaT1xU5Z1to3ovarweY7PE59KYneyxle045Dw4mmQK6GtUO/wBq2vFx2vwwjD8KKwdSWmdkjs4u+RzYZQ9xa5xDWy43ZbxyxjJtDxAbSvAV5bWrTdY2zEOdYdQ87gDLa42HpHG6QepLfyXvadQrqfR20E9HwECviHGnorkRc7/lZPdPjDLul2hdru1wE7BgJo2RhxRuNOAORB7nAHJfPo3pRa7A/HZ5XMzq5vFjveacj48ehCvPXc0G6Zj0fEf/ACtH6rPLbO7AZKHCHBtaZVIJpXwC6HT3nJTcozHm0dq11jxXq3ZPAitLRVzAd14HF8dc6dWnMV58VOFkvQy9TZLbZ7SDTBM3F7hOF482Fw81rRWoiIiAiIgIiICr7XBp7LdbIo4A0zTYjidvCNraCobzJLsq5bpyVgrNWuy9/nF6StBq2ENibn2RV/43OHkg4F76SW22upPaJpS40wlxw1JyAYN0Z8gF1Lr1ZXpOA5tlcxp5yubF54XkO+CnnyermjMU1tcxpftBHG4ipaGsxPwk8K4xWnRW2tPN1U0txrHZKKs8T6mr0aKiON56NlaD+Kg+K4F5XBeF3OxyRTQHgHtqB4B7MvitTLznha9pY9rXNcKOa4BzSDxBByIVVettvzhnizncWte87LQbfbNH1ZxtK/eyf+JXLq71jQXqDHTY2hoq6MmoI5uYfrCvEUBFfNVVrl0HjsErbRAMMMpILOUcgzo37LhUgcqHlRQq5L0lsk0dphdhkjcHNPLvB6gioI5glb9bRavKEJjTXyLmaN30y22aK1x+zIwOpxLTwc097XAg+C6akCIiAiIgov5QmjJjnZeLG7kgEclBwlaN0n3mAD7neFU615f11RWyCSyzNxRvbQ9RzDh0IIBB6hZHnaA5waagEgHqAcig1HoDFhu2xt/6eM+rAf1XcXw3BFgs1nZ2YIh6RgL7lw7zu0rYQrXb/wAJn96L+sxUhBZ/8Pe8j96KGtQaAboHI0JOLpkrs13n/Cpffi/qNKqe7of8OdyJY81Aq4gOLsJHJm6Dj65Lu+EU5VtHxP8AhKldzP1KGLX9y2rbQQzVrjiY+vXEwH9VkBav1fvxXbYj/wBLCPSJo/RYUO6iIgIiICIiDwtlpbFG+V2TWMc93g0En4BZCvC1umlkmf7Uj3Pd7z3Fx+JWk9cV6fN7qtBB3pAIm9+0cA78GM+SzXYbM6WRkTfae9rG+LnAD4lBo/VHdvze67MDxka6Q9+0cXN/Bh9FLV42OzNijZE32WMaweDW0H5L2XEyW5WmfdbAi+S97aIIJZ3cI4nyH7jS79Fmm16YXnajgdarQ+uWBj3NDq8i1lAfRW4Ontl7MTOk/wBf+kUMjYrBG4PkZJtJMJqGUaWtaT2jiJpyoOqqS0WZ8ZwvaWmgNCKGh4KVaP6N4CJZuIza0UdnxB6O6ED2eJ7vTTuAGJjqAFrsIo7g01NGdplR7XUkeHosfhtsfTzafLXon+DbhN5TT5OmkFRPdzjw+mj8Khsg7syw073K5FmbUvazFe1nocn7Rju8OjdQfxBp8lplaagREQEREHx3vPs4JpOzE93own9Fj9ax05fhu62kZEWWanjsXUWTkGvbEKRsH2G/yhey87N7DfdH5L0XCstQHXu+l1uHWaMfmf0VfXVDWytZmKw54uOFwOZp+5z4ccWanfygHUu1o62mP+SRQq5Rhhiyw0jY/M4qbo+l+0OWy816jwCu4t9LsEbtP0rUrU+rB+K67Gf8ho9Mv0WXbQzC5zeQcR6Faa1RPrdNkP2HD0keP0WraNTpqJaiIsAiIgIiIKf+UjedI7LZR9Z75Xfdbgb/ADv9FBNTl1fOL0gqKtixTO+4Nw/9wsX169bz216yMHCGNkY8aY3fikI8lKPk53Xu2m2EcS2Jp8N+T841VmtxpMsx3W+iIuMtQ7XHb9jdc9DQvwRj77xiH8Acqm0IhpBio7ekNCOOQaKRnlJkczlRTX5RltAs9mg5vmc//tsw/wCqoto1Dhs8YAxYm9cOIuOLZivsHMHHz4dF6jwCnnv4lZgjeT6h945U76YKitBvbLp/mV45qMac2wbkIofrEgZAZhoj6MNSaefRdW+b8jgDqkPeaUaMsVBkSB+zDfx+CgtqtD5pHSONXOdU5cSe4fkup4j1VYrOKvee/wAJ9RliI4Ql+pK73TXtC4DKJskju4BhaPxvaPNaVUD1PaFm7bNtZW0tE1HPHYaPYj8c6nvNM6BTxcFpCIiAiIg4OsP/AIZbf/rS/wBMrKK1npvEX3fbGjibLMB47J1FkxBrywmsbD1Y3+UL3XO0Zm2lksz+1BEfWNpXRXDtGplcrb5Qp/w+LvtLP6Uih9xmkEVMtxp3M6Owjeb1l+xwoph8oVv+HxHpaWf0pFDdHnYrPERnuhu7lVw+qzpLQe30XqfAJ8pj4W9P/XP0gl9MpPKP8x38xWi9SkmK6LN3bUek71nzShoFpkpTiDkKDNoPr176q+tRE2K6Yx2ZJW/jLv7lr541ktHtMta8atMJ6iIqkRERAXnK8NBcTQAEk9AOK9FFNa97fNbrtLwd57Nm3kayHAaeDS4+SDNt/XibTaJrQa/SyvfnxGJxIHkDRaK1VXV82uyzsIo57Nq7xkOIV7w0tHks8aN3YbXaoLMK/SSsYacQ0u3j5NqfJavjYGgNAoAAAOgHALS6y/lFUqv0iIucsUb8oW2YrZZ4B9SHF5veRT0YF/bOzCxrDQ0Y1m8ci1tAA41/Y5ZP5/ny9ZUxtF+SNBBDHxsFRUBrI2l9acgcZK64HPLgCaircJIo5wpnF2Wcvy9p4Hj445t9fuv6aO8oFpdLitUhq4+yN8UOTAP0y7qKV6itGm2u3GeQVjswD6HgZHEiMHwo53iwKEXxNjmkdmavdSpqaVy+Cvn5P92bK7jMeM0r3V+yz6MD+Jrz95c7PbeS0+8y1Lzu0ysdERVIiIiAiIg+a8oNpFJH2o3t9WkfqseLZiyLpPZNja7TD2J5WeTZCB+SDR2rS0bS67I7pA1v8G5/apGoDqHtokutsfOOaRnqRJ/qKfLi5Y1kmPlZHZX2vyLFdlezPGfg5v8Acq80RfiszBxzdHxAxDFi2Z7A3q4++itLXLZy+6bRQVLdm7yEzK+gJPkqg0EnrHJHQZEEk1oQ4UpIeUe7n3kdV6HwG+r699wuwTq/25OmY/8AkE4sVWtzwhvBoFKDpSledK81cXydbTiu+WOvsWl1PB0bD+dVU2njPpWOqc2Ab3tZE8RyFCKdwCn/AMmu252yzk8RFI0eGNrz8WKXWV457R8qcsavK6ERFrKxERAVNfKQvnKzWFp7Uzx6sj/1PQK5VlrWhffz28rRKDVjX7OPpgj3QR3Egu+8g72oO6dreDpyN2CJzgftv3G/hLz5K/lW3yfrp2VhktJG9NKaHqyPdH4zIrJXK6m/LJPx5LK9hEXM0qt/zex2ifmyGRw94MOEetFRWNzpJn2wzfObztFo4gySyA14AvNHDtUDq4edFI5ptmx0laYQZK5caftaHiXcNl9VR7QSDckfnm5rRXhkCd0/8ypGELoaV2jBZnjtODc60qTUk9JaA4hyqvedHH4PScvuWzi/Jh3/AHQFxqc1q/Qa7/m932WAihbBHiH2i0Of+IlZauSxbe0QwZ/SSsZlx33hv6rXwFMgvPy0H6REQEREBERAWaddt3bG9ZzylDJG/eYGu/G1y0sqZ+UldP8Au1tA7ULz+OMfCRB5/JxvH/erKT2JWj1a/wDsVwrNup29vm15w1IDZMULq/bG4P8AuBi0kuX1ddX37rK9nM0pu/5xY7RAOMkMjR7xYcJ9aLNmhtrEc9HGgcC2p9kGoILh9YZcO9alWZdPrqfd15StbugS7WIgfVccbKe6d3xaVteGZvw8n1qf3N8bRZ76fMyjPAguBBFXCoaQS7mDQkDkMl9GpO9xZrziDjRszXQmppm+hZ6va0ea/GkrhNY2ytoAHNdhrk3EKOofrEuOY+rRRGzzOjc2RhLXNcC0jiCDUEea7HiGpzTaO0xE/oln/q37tjIuDoPpIy8rJHamEYiMMjR9SUAY2/qO4g813loqREX8QRjWbpGLvsE0wNJHDZxddo8EAj3RV33Vl+GJz3BjQS5xAAHEkmgA81OdcmmYvG1bKF1bPDVrCDk9x9t/eMqDuFeaak9HfndvEzhWOzgSHpj/AHQ/iBd9xRvaK1m0+hC9dGrqFkssFlH7uNrTTm4DePm6p810URcSZ3O5XCgWvS8tjdjo65zSsZ5A7Q+W5TzU9VK697eZ7bZrA2tI24nUz3pXDiO5rAfvFbHSY5vliIYly9HLLs7PGDSpzOVKOdUtYQfrkEUfy/Ph6dWsEsiB4VLh0PANd1cKOq7nVSwMAAAAFBgABqA01+jB5sNM5Pq/lXmkNqMs7zyBwtANQGt3WgHmMuPNe0660YunjHHrqGznnhjiqQ6l7v2962fKojxyO7sDDhP8ZatMqlPk3XRV9ptpHBrYmn3jjf8Ays9Vda4DREREBERAREQFGNZtx/PrutELRV4ZtI6cS+PeAHjQt+8pOiDHEEzo3Ne00c0hzSOIINQfVas0avZtsssNqbSkkbXEcaO4Pb5OBHks961tG/mF4SxtFIpDtYumF5NWjphdibToB1U5+T9pJVsl3PObayxV6HKRo8DR1PtO6LV6rHypv2SrK3VXOu3RA2yzi1xNrNADiAGb4jmR3lpq4DoXc6KxkXOx3mlotCUxtlS7ry+hksz82kEtJ4tcM6NrkMRAr4LkK59ZGqQyuda7AAHEkvhqGgnmYycgfsmg6dFT9tskkLzHKx0b25Fr2lrh4grt1zxlrHwjMz5RPokWr/Tea6Zi5oxxPoJIyaB1ODmn6rh18j3Xzo7rEu62taY7Sxjz+7mcIpAelHGjj7pIWXERFri8NIrJA3FLaYYx9qVor4CtSe4KoNZ2twWhjrHYaiNwLZJiC1z2ni1gObWnmTmeFBzqZdnRrRW1Xg/BZ4nPFaOed1jPecchka04nkCsTMRG5HPsFiknkZDG0ve5wa1o4klaX1f6LNuyyMgyMh35XDg55GdPsjJo8K8yvg1eau4brbtCRLaHCjpKUDR2YweA6nie4ZKZLndTn5/lr2TrGhERaabznmbG10jiA1rS5xPAACpJ8lnewW11ut89vdiGJ7iwN/aUIIY1nIlrAAe5WLrz0oFnsvzJjvpZxvU4tiB3ifeIw94xdFBtHbII4GNpUvqSAaF7qVLWk/sywUr2qc16HwPpZtk5z2jz/n89E8NeV/p73xatlC99abhDcFaVdUARV/dVIxd6rYlS7Tm27rIgQQ7fJAAxUJa0gcWDN271FVH7gu02q0Q2ZtaySNZkK0DnAE+QqfJb/iWXll4+zHU23fXs0Vqcuj5rdcAIo6UGZ3ftM2fgDPRTNeUEQY1rGijWgADoAKAL1XNa4iIgIiICIiAiIgg2uPRI3hYy+NtZ4Kvjpxc2n0jPMCoHMtA5rPdw3rJY547VEaPjcHDoeRae4gkHuJWvAqA12aCGyTG3wN+gmcS8DhHKcz4NcakcgajLdCd/IXFozf0Vvs7LVCd1wzbzY4e0x3eD+h4FdVZm1e6by3XPiFXwvIEkdeI5Ob0cPjwPUaKuW94bZC20QPD43DIjkebXDi0jmCuV1GCaT8JxO33rn3xcVmtbcFohjlHLG0Ej3XcWnwK6CLXiZjzhNX14albskNWbeHuZJiH/AJA4/FfEzUVYq5z2gjuMY/tKs5FbHUZP+yPGEMurVRdcBDtgZXDnM8vHm3Jp9FLoLOyNoYxrWNAoGtAa0DoAMgFWmsfQy9J7a22WOYltGBrdrszEWihI5FpO91qSKcFZVkx4GbShfhbjI4Yqb1O6tVnLuYiZtvf6EINrYkvaPYy3eZCwVEjIWCR+KowuLaEuHEZZZZqWaNWuaazQy2iMwzOYNow8nDKoGdK0rhOYrQ5hdNFC191iuu3qzoXL0kv2Kw2d9qmNGsGQ5vcfZY3qSf8A3wC+22WpkTHSyODWMaXOcTQBozJWc9Yumct7WmjKiBji2FnM1yxuHad8Bl1Js6fBOS3wxM6eTLZLetvfapqOFcRaa4GtBoyOv1W8BXxPEqUvIPEg1GeI4Q4NGW0z3A36p+svjuW7W2eMMoKkYnuPB1abziPah5U4kiq+LS+37KLZ1ON4pQ+1hyqX1Gbex0FeYXuOmx16Tp+U9+8/6huUrGPHuUUvy27aZ8lS4F2RORIGQJA4ZDgp18n65dtb3WkirbPGSPfkqxv4cZ8gq1WkNSOj/wA0u5kjhSS0Hau6hhAEY8MIxffK8/e83tNp7y0Jnc7lPERFFgREQEREBERAREQF8t5WGOeN8MrA9j2lrmngQf8A9x5L6kQZi1j6BS3VLUBz7O8nZyU4fYkpwePRwFRzA52iGltpuyXawv3T7cbqljx9odejhmPMg6jvKwR2iN0MzGvjeKOa4VBH/vnXkqL1haoZ7IXT2MOmgzJYM5Yx4fvG94z6jKqxMRMakWVoVrCsl5NDWu2U9N6F53q88ByDxx4Z9QFLFkCOQtIcCQQagjIgjgQp9orrhttlAjnpaYxlvmkgHc/PF94E960cvSetP/Eot7tAooTcWti7bSAHSmB/ZmbhH8YqyniQVK7JesEwxRTRSDqyRrh8CtS2K1e8J7fWi/DpWjMuA8SFzLw0nsUH7S1QM7jK3F5CtSVGKzPYdZFXl966LvgqIRJaHZ0wt2bK9C59D5hpVcaTa17fbKsY4WeI5YIsnEHk553v4cI7lfTpb29NIzaHb14aamaQ3bC76OMgykH25BwZ4N5/a90KPaK3EY6TyDfIJa0mmFudXnvFPYPEHxXzXDdkUdJp3xl5Jwse8YQRxMmdRkainNdC36WxNDsGKRxzqRhBcK0c89puVMOVB6eo6HpsXT1i+WYiY7R6/el+Kta/nvP9nSvC8GwMMjzzxN4Vc48JAD1/5fLiVX142x0zzI7iTw5AcgO5fq8bxfO4vea5k04Cp4kDqaZlSDQTV9ar0eCwGOAHflcN3vDB9d3cMhzIVfWdZOeeNfKsfqrzZec6js/mrLRB16WtsRB2LKPmdmNyuTa8nOOQ50xHktOxsDQAAAAKADIAcgFytFtG4LugbZ4G0AzcTm57ub3nmT6DgKBdhaCkREQEREBERAREQEREBERAREQQ7TDVnYbxrI5mymP72KjST1eOD/E596qfSTUxeFmq6ENtLOse6+nexx+DS5aJRBjy22CWB2CaKSJ3ZkY5h9HUK+ZbEtdjjmbgkjbI0/Ve0OHoclGrx1X3TOausjGn/Kc+IejCG/BBmBFoO1ajbtf7L7RH7sjSPxNK+N2oSx8rTaB47M/2oKIRX1HqFsI9qe0nwMY/sK6tk1MXSz2opZffmeP6eFBnCqk2jur68bcRsrO9rD+8lGzZQ8wXe190FaOurRWxWXOCywxntCNuL+I73xXYQVbojqSs8BEtsf8AOHjPZtq2IHv+s/zoOoKs2CFsbQxjQ1rRRrWgNaAOAAGQC9UQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQeW2Z2m+oTbM7TfULJVnsu0cI2tBc7IDIVNMhnzPDxXoLteWNeInFjuDgwkZuLQKgZEuFAOJqOoU+DG2sdsztN9Qm2Z2m+oWUn3NMMP0Em8CQBG4kAOoagCooaceo6hesOjszmbTA1jS4NbtXNjL3UBowPoXZOacuNRSqcDbVG2Z2m+oTbM7TfULKlouC0RuLXWeWu0MeUTiDICRgaQKOORyC/T9H5m0xx4KtLqvGECjntwuqN19Y30ac91Y4m2qdsztN9Qm2Z2m+oWRtmOg9E2Y6D0WeBtrnbM7TfUJtmdpvqFkbZjoPRNmOg9E4G2udsztN9Qm2Z2m+oWRtmOg9E2Y6D0Tgba52zO031CbZnab6hZG2Y6D0TZjoPROBtrnbM7TfUJtmdpvqFkbZjoPRNmOg9E4G2udsztN9Qm2Z2m+oWRtmOg9E2Y6D0Tgba52zO031CbZnab6hZG2Y6D0TZt6D0Tgba52zO031CbZnab6hZFwN6D0TA3oPROBtrrbM7TfUJtmdpvqFkbA3oPRNm3oPROBtrnbM7TfUJtmdpvqFkXC3oPQJhb0HwTgba62zO031C/qyLgb0HoicDb9xyFpD2mjmkOB6EGoPqF2XaTPrURsbQ7gbwaw4QYzliIowZgtzJOeVOKisHRhvZrGtYId1rmuZV5xAsc5zMRAGIBz5KigqHjhhBX1WPSeSIyvazflJqTI/Z5sw70QIbIRmWk8Ca50C4iLGhIzpm+rnCzxgvDo378mcT3ve6MUIwnFI/fGYFOdSfhvS/NvBFZtk1rIcWyo4ucwPe9z2kn2gcTOPDZinEhcpE0CIiyCIiAiIgIiICIiAiIgL1sdoMT2yAB1OLXCrXAghzT3FpIyzzXkiDq/7fJoTBZyaDEdmAXkcS6nEk5+buop+hpEaFmwgwl4fhwUaDu8B34RmaniFyEWNDqSX5iDR83gAa/GA1lBWlKU6EZkdQD3L9f7e9kfNrPQChpGKnhQk8QRTiOpXJRNDuf8A9ZNhDCyM0AB3TvUjczOnUOz8OVTVaNK5XknZxAkOGQdlia4YmitGnePLMYQQaZ8NE0Pe8LW6eR8zgAXGpDRQZAAfAceZqUXgiyP/2Q==',
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Text(
                              'Letter U',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
