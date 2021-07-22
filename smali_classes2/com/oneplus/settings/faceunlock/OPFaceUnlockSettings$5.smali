.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showDisableAospFaceUnlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->disableAospFaceUnlock(Landroid/content/Context;)V

    .line 344
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$600(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    return-void
.end method
