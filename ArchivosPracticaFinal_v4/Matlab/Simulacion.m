sim('Controlador1.slx');

angulo = phi.signals.values(1,:)

angulo = angulo.';

borrar = sum(isnan(angulo)) + 1;

training = [sonar1.signals.values(borrar:end),sonar2.signals.values(borrar:end),sonar3.signals.values(borrar:end),sonar4.signals.values(borrar:end),x.signals.values(borrar:end),y.signals.values(borrar:end),angulo(borrar:end),w.signals.values(borrar:end),v.signals.values(borrar:end)];


save datos_entrenamiento training


