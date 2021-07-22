.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;
.super Ljava/lang/Object;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$500()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 120
    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$502(Z)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;->this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$600(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    :goto_0
    return-void
.end method
