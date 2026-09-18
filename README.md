# raidnaves

## Turnos y disponibilidad

La página consulta `public.turnos` para ocultar los horarios con estado
`pendiente` o `confirmado`. Para que dos clientes no puedan reservar el mismo
horario al mismo tiempo, aplicá la migración
`supabase/migrations/20260917230500_prevent_duplicate_active_turnos.sql` en el
proyecto de Supabase. La restricción permite reutilizar horarios con reservas
`cancelado` o `completado`; si ya existen duplicados activos, hay que
resolverlos antes de aplicar el índice.
