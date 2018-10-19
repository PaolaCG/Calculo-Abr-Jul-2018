function error = error_relativo(esperado,resultado)
  numerador=norm(esperado-resultado,inf);
  denominador=norm(esperado,inf);
  error=numerador/denominador;