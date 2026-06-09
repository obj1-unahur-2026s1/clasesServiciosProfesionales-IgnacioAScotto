class Empresa {
  const profesionalesContratados = []
  const property honorarioReferencia

  method contratarProfesional(unProfesional){
    profesionalesContratados.add(unProfesional)
  }
  method contratarProfesionales(listaDeProfesionales){
    profesionalesContratados.addAll(listaDeProfesionales)
  }

  method estudiaronEn(unaUniversidad) = profesionalesContratados.filter({p=>p.universidad() == unaUniversidad})
  method cuantosEstudiaronEn(unaUniversidad) = self.estudiaronEn(unaUniversidad).size()
  // cuantosEstudiaronEn(unaUniversidad) = profesionalesContratados.count({p=>p.universidad() == unaUniversidad})

  method profesionalesCaros() = profesionalesContratados.filter({p=>p.honorariosPorHora() > honorarioReferencia})

  method universidadesFormadoras() = profesionalesContratados.map({p=>p.universidad()}).asSet()

  method profesionalMasBarato() = profesionalesContratados.min({p=>p.honorariosPorHora()})

  method esDeGenteAcotada() = profesionalesContratados.all({p=>p.trabajaEn().size() > 3})
  
}