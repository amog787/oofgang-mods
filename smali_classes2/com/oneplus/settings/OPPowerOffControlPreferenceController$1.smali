.class Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;
.super Ljava/lang/Object;
.source "OPPowerOffControlPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPPowerOffControlPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPPowerOffControlPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;->this$0:Lcom/oneplus/settings/OPPowerOffControlPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "OPPowerOffControlPreferenceController"

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p2, "click dialog positive button"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;->this$0:Lcom/oneplus/settings/OPPowerOffControlPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->access$000(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const-string p2, "click dialog negative button"

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/oneplus/settings/OPPowerOffControlPreferenceController$1;->this$0:Lcom/oneplus/settings/OPPowerOffControlPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/OPPowerOffControlPreferenceController;->access$100(Lcom/oneplus/settings/OPPowerOffControlPreferenceController;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
