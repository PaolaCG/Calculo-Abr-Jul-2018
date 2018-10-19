function error = Err_rel(esperado,resultado)
  numerador=norm(esperado-resultado,inf);
  denominador=norm(esperado,inf);
  error=numerador/denominador;