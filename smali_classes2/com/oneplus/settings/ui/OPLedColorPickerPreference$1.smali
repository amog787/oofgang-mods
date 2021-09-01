.class Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;
.super Ljava/lang/Object;
.source "OPLedColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 351
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 355
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->access$200(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
