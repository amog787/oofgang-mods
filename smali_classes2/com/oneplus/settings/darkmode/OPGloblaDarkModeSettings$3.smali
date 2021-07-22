.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;
.super Ljava/lang/Object;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->lambda$onResume$0(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    iput-boolean p2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;->val$enabled:Z

    const-string v1, "op_force_dark_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
