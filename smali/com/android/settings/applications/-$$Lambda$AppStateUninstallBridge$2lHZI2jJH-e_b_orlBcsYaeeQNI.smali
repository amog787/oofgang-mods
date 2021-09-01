.class public final synthetic Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/AppStateUninstallBridge;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/AppStateUninstallBridge;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;->f$0:Lcom/android/settings/applications/AppStateUninstallBridge;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;->f$0:Lcom/android/settings/applications/AppStateUninstallBridge;

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$AppStateUninstallBridge$2lHZI2jJH-e_b_orlBcsYaeeQNI;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/AppStateUninstallBridge;->lambda$getSwitchOnClickListener$0$AppStateUninstallBridge(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method
