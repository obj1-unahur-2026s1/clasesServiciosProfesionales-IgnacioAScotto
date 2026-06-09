class ProfesionalVinculado {
  const property universidad

  method trabajaEn() = [universidad.provincia()]
  method honorariosPorHora() = universidad.honorariosRecomendado()
}

class ProfesionalAsociado {
  const property universidad

  method trabajaEn() = [entreRios, santaFe, corrientes]
  method honorariosPorHora() = 3000
}

class ProfesionalLibre {
  const property universidad
  const property trabajaEn
  const property honorariosPorHora
}

object entreRios{}
object santaFe {}
object corrientes {}
object buenosAires{}
object cordoba{}