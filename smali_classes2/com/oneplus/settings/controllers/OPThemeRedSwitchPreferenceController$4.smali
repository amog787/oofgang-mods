.class Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;
.super Ljava/lang/Object;
.source "OPThemeRedSwitchPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->enableTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    .line 148
    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->access$400(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-static {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->access$500(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "oneplus_shape"

    .line 147
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
