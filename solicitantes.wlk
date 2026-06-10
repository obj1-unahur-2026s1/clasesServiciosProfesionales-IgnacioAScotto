class Persona {
  const property provinciaDondeVive

  method puedeSerAtendidoPor(unProfesional) = unProfesional.trabajaEn().contains(provinciaDondeVive)
}

class Institucion {
  const property listaDeUniversidades

  method puedeSerAtendidoPor(unProfesional) = listaDeUniversidades.contains(unProfesional.universidad())
}
class Club {
  const property provinciasDondeEsta

  method puedeSerAtendidoPor(unProfesional) = provinciasDondeEsta.any({p=>unProfesional.trabajaEn().contains(p)})
}