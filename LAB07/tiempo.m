function x= tiempo(vals,cotainf,cotasup)
  n=length(vals);
  x=[];
  for i=1:n
    if cotainf<vals(i) && vals(i)<cotasup && imag(vals(i))==0
      x=[x,vals(i)];
    end
  end