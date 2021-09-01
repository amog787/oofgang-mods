.class Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;
.super Ljava/lang/Object;
.source "OPThemeMCLSwitchPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    iput-object p2, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OPThemeMCLSwitchPreferenceController"

    const-string v1, "switchToNormalTheme"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$300(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$100(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V

    .line 113
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;->this$0:Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->access$200(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V

    return-void
.end method
