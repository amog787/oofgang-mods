.class Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController$1;
.super Ljava/lang/Object;
.source "OPDarkModeEnabledPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;->setChecked(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController$1;->this$0:Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;

    iget-boolean p0, p0, Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController$1;->val$isChecked:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/display/darkmode/OPDarkModeEnabledPreferenceController;->enableDarkMode(Z)V

    return-void
.end method
