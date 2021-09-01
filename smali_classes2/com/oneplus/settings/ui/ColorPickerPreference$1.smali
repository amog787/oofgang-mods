.class Lcom/oneplus/settings/ui/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/ColorPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 396
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 400
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$200(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V

    :cond_1
    if-ne p1, v1, :cond_2

    .line 403
    iget-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$300(Lcom/oneplus/settings/ui/ColorPickerPreference;)Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 404
    iget-object p0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference$1;->this$0:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->access$300(Lcom/oneplus/settings/ui/ColorPickerPreference;)Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;->onCustomColorClick()V

    :cond_2
    return-void
.end method
