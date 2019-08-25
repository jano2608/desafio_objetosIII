class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre=nombre
    @nota1=nota1
    @nota2=nota2
    @nota3=nota3
    @nota4=nota4
  end

  def self.read_file (file)
    alumnos= []
    data= []
    File.open(file, 'r') { |grades| data = grades.readlines }
    data.each { |alumno| alumnos << Alumno.new(*alumno.split(', ')) }
    print alumnos
  end
end

Alumno.read_file('notas.txt')


