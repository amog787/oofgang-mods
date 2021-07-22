.class Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;
.super Ljava/lang/Object;
.source "OPEditTextPreferenceForWifiTetherName.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    .line 143
    invoke-static {p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string v0, "oneplus__broadcat_wifi_no_show_dialog"

    const/4 v1, 0x0

    .line 142
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 147
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    .line 148
    invoke-static {p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    iget-object p2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    .line 150
    invoke-static {p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 151
    sget v0, Lcom/android/settings/R$layout;->op_wifi_broadcast_isvisible_dialog:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 154
    sget v0, Lcom/android/settings/R$string;->oneplus_wifi_name_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    iget-object v1, v1, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 156
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 158
    iget-object p0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    sget v0, Lcom/android/settings/R$id;->isvisible_checkbox:I

    .line 159
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 158
    invoke-static {p0, p2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$202(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 160
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method
