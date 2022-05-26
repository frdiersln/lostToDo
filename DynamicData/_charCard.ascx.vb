Imports System.Web.DynamicData

Partial Class DynamicDataField
    Inherits System.Web.DynamicData.FieldTemplateUserControl

    Public Overrides ReadOnly Property DataControl() As Control
        Get
            Return Literal1
        End Get
    End Property
End Class
