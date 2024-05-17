class AddMeasurementsModel {
  final String? id;
  final String? customerId;
  final String? lpShirt;
  final String? lsShirt;
  final String? lchShirt;
  final String? ucShirt;
  final String? cShirt;
  final String? wShirt;
  final String? hShirt;
  final String? shShirt;
  final String? slSmShirtL;
  final String? slSmShirtR;
  final String? ebShirtL;
  final String? ebShirtR;
  final String? tfShirtL;
  final String? tfShirtR;
  final String? fullShirt;
  final String? ahShirt;
  final String? aShirt;
  final String? dpShirt;
  final String? fcShirt;
  final String? bcShirt;
  final String? nShirt;
  final String? bnShirt;
  final String? ckShirt;
  final String? gheraShirt;
  final String? lPant;
  final String? wPant;
  final String? hPant;
  final String? thPant;
  final String? kPant;
  final String? moriPant;
  final String? lSalwar;
  final String? mSalwar;
  final String? wSalwar;
  final String? hSalwar;
  final String? lChuridar;
  final String? wChuridar;
  final String? hChuridar;
  final String? thChuridar;
  final String? kChuridar;
  final String? moriChuridar;
  final String? lLehnga;
  final String? wLehnga;
  final String? hLehnga;
  final String? lGown;
  final String? blGown;
  final String? lBlouse;
  final String? dpBlouse;
  final String? ucBlouse;
  final String? cBlouse;
  final String? wBlouse;
  final String? shBlouse;
  final String? slSmBlouseL;
  final String? slSmBlouseR;
  final String? aBlouseL;
  final String? aBlouseR;
  final String? ahBlouse;
  final String? fcBlouse;
  final String? bcBlouse;
  final String? nBlouse;
  final String? bnBlouse;
  final String? remark;
  final dynamic drawing;
  final dynamic drawingHorizontal;

  AddMeasurementsModel({
    required this.id,
    required this.customerId,
    this.lpShirt,
    this.lsShirt,
    this.lchShirt,
    this.ucShirt,
    this.cShirt,
    this.wShirt,
    this.hShirt,
    this.shShirt,
    this.slSmShirtL,
    this.slSmShirtR,
    this.ebShirtL,
    this.ebShirtR,
    this.tfShirtL,
    this.tfShirtR,
    this.fullShirt,
    this.ahShirt,
    this.aShirt,
    this.dpShirt,
    this.fcShirt,
    this.bcShirt,
    this.nShirt,
    this.bnShirt,
    this.ckShirt,
    this.gheraShirt,
    this.lPant,
    this.wPant,
    this.hPant,
    this.thPant,
    this.kPant,
    this.moriPant,
    this.lSalwar,
    this.mSalwar,
    this.wSalwar,
    this.hSalwar,
    this.lChuridar,
    this.wChuridar,
    this.hChuridar,
    this.thChuridar,
    this.kChuridar,
    this.moriChuridar,
    this.lLehnga,
    this.wLehnga,
    this.hLehnga,
    this.lGown,
    this.blGown,
    this.lBlouse,
    this.dpBlouse,
    this.ucBlouse,
    this.cBlouse,
    this.wBlouse,
    this.shBlouse,
    this.slSmBlouseL,
    this.slSmBlouseR,
    this.aBlouseL,
    this.aBlouseR,
    this.ahBlouse,
    this.fcBlouse,
    this.bcBlouse,
    this.nBlouse,
    this.bnBlouse,
    this.remark,
    this.drawing,
    this.drawingHorizontal,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'customerId': customerId,
      'lpShirt': lpShirt,
      'lsShirt': lsShirt,
      'lchShirt': lchShirt,
      'ucShirt': ucShirt,
      'cShirt': cShirt,
      'wShirt': wShirt,
      'hShirt': hShirt,
      'shShirt': shShirt,
      'slSmShirtL': slSmShirtL,
      'slSmShirtR': slSmShirtR,
      'ebShirtL': ebShirtL,
      'ebShirtR': ebShirtR,
      'tfShirtL': tfShirtL,
      'tfShirtR': tfShirtR,
      'fullShirt': fullShirt,
      'ahShirt': ahShirt,
      'aShirt': aShirt,
      'dpShirt': dpShirt,
      'fcShirt': fcShirt,
      'bcShirt': bcShirt,
      'nShirt': nShirt,
      'bnShirt': bnShirt,
      'ckShirt': ckShirt,
      'gheraShirt': gheraShirt,
      'lPant': lPant,
      'wPant': wPant,
      'hPant': hPant,
      'thPant': thPant,
      'kPant': kPant,
      'moriPant': moriPant,
      'lSalwar': lSalwar,
      'mSalwar': mSalwar,
      'wSalwar': wSalwar,
      'hSalwar': hSalwar,
      'lChuridar': lChuridar,
      'wChuridar': wChuridar,
      'hChuridar': hChuridar,
      'thChuridar': thChuridar,
      'kChuridar': kChuridar,
      'moriChuridar': moriChuridar,
      'lLehnga': lLehnga,
      'wLehnga': wLehnga,
      'hLehnga': hLehnga,
      'lGown': lGown,
      'blGown': blGown,
      'lBlouse': lBlouse,
      'dpBlouse': dpBlouse,
      'ucBlouse': ucBlouse,
      'cBlouse': cBlouse,
      'wBlouse': wBlouse,
      'shBlouse': shBlouse,
      'slSmBlouseL': slSmBlouseL,
      'slSmBlouseR': slSmBlouseR,
      'aBlouseL': aBlouseL,
      'aBlouseR': aBlouseR,
      'ahBlouse': ahBlouse,
      'fcBlouse': fcBlouse,
      'bcBlouse': bcBlouse,
      'nBlouse': nBlouse,
      'bnBlouse': bnBlouse,
      'remark': remark,
      'drawing': drawing,
      'drawingHorizontal': drawingHorizontal,
    };
  }

  factory AddMeasurementsModel.fromMap(Map<String, dynamic> map) {
    return AddMeasurementsModel(
      id: map['id'],
      customerId: map['customerId'],
      lpShirt: map['lpShirt'],
      lsShirt: map['lsShirt'],
      lchShirt: map['lchShirt'],
      ucShirt: map['ucShirt'],
      cShirt: map['cShirt'],
      wShirt: map['wShirt'],
      hShirt: map['hShirt'],
      shShirt: map['shShirt'],
      slSmShirtL: map['slSmShirtL'],
      slSmShirtR: map['slSmShirtR'],
      ebShirtL: map['ebShirtL'],
      ebShirtR: map['ebShirtR'],
      tfShirtL: map['tfShirtL'],
      tfShirtR: map['tfShirtR'],
      fullShirt: map['fullShirt'],
      ahShirt: map['ahShirt'],
      aShirt: map['aShirt'],
      dpShirt: map['dpShirt'],
      fcShirt: map['fcShirt'],
      bcShirt: map['bcShirt'],
      nShirt: map['nShirt'],
      bnShirt: map['bnShirt'],
      ckShirt: map['ckShirt'],
      gheraShirt: map['gheraShirt'],
      lPant: map['lPant'],
      wPant: map['wPant'],
      hPant: map['hPant'],
      thPant: map['thPant'],
      kPant: map['kPant'],
      moriPant: map['moriPant'],
      lSalwar: map['lSalwar'],
      mSalwar: map['mSalwar'],
      wSalwar: map['wSalwar'],
      hSalwar: map['hSalwar'],
      lChuridar: map['lChuridar'],
      wChuridar: map['wChuridar'],
      hChuridar: map['hChuridar'],
      thChuridar: map['thChuridar'],
      kChuridar: map['kChuridar'],
      moriChuridar: map['moriChuridar'],
      lLehnga: map['lLehnga'],
      wLehnga: map['wLehnga'],
      hLehnga: map['hLehnga'],
      lGown: map['lGown'],
      blGown: map['blGown'],
      lBlouse: map['lBlouse'],
      dpBlouse: map['dpBlouse'],
      ucBlouse: map['ucBlouse'],
      cBlouse: map['cBlouse'],
      wBlouse: map['wBlouse'],
      shBlouse: map['shBlouse'],
      slSmBlouseL: map['slSmBlouseL'],
      slSmBlouseR: map['slSmBlouseR'],
      aBlouseL: map['aBlouseL'],
      aBlouseR: map['aBlouseR'],
      ahBlouse: map['ahBlouse'],
      fcBlouse: map['fcBlouse'],
      bcBlouse: map['bcBlouse'],
      nBlouse: map['nBlouse'],
      bnBlouse: map['bnBlouse'],
      remark: map['remark'],
      drawing: map['drawing'],
      drawingHorizontal: map['drawingHorizontal'],
    );
  }
}
