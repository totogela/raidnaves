-- A pending or confirmed slot can only belong to one booking.
-- Cancelled/completed bookings do not block a slot from being reused.
create unique index if not exists turnos_fecha_horario_activo_uidx
  on public.turnos (fecha, horario)
  where estado in ('pendiente', 'confirmado');
