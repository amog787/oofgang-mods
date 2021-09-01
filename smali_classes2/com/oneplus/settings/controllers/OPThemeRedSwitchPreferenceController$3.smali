.class Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$3;
.super Ljava/lang/Object;
.source "OPThemeRedSwitchPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
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

    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$3;->this$0:Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->enableDarkMode()V

    return-void
.end method
