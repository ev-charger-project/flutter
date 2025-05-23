mixin EntityConvertible<T_ENTITY, T_MODEL> {
  T_MODEL fromEntity(T_ENTITY entityObject);
  T_ENTITY toEntity(T_MODEL dataModelObject);
}
