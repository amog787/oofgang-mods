.class Lcom/oneplus/settings/notification/OPEarphoneMode$1;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 147
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 151
    iget-object p2, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$000(Lcom/oneplus/settings/notification/OPEarphoneMode;Z)V

    .line 152
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$100(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "oem_call_information_broadcast"

    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$1;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
