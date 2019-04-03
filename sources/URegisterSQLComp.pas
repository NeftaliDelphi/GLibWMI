unit URegisterSQLComp;


//=========================================================================
//
// I N T E R F A C E
//
//=========================================================================
interface

// Procedimiento de REGISTRO
procedure Register();                           

//=========================================================================
//
// I M P L E M E N T A T I O N
//
//=========================================================================
implementation

uses
  Classes, DesignIntf, StrEdit,
  {GLibWMI} UConstantes,
  {GLibWMI Components} CWMISQL, FormAbout, UTAboutProp;


// Procedimiento de REGISTRO
procedure Register();
begin
  // Componentes
  RegisterComponents(GLIB_PACKAGE_WMI, [TWMISQL]);
  // Editores de propiedades
  RegisterPropertyEditor(TypeInfo(TFAbout),nil,'',TAboutGlibWMIProp);
  RegisterPropertyEditor(TypeInfo(TStrings), TWMISQL, 'Properties', TValueListProperty);
end;

end.
