.class Lcom/oneplus/settings/notification/OPEarphoneMode$2;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    .line 166
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    .line 165
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$300(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "oem_call_information_broadcast"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
