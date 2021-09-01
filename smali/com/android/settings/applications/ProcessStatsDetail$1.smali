.class Lcom/android/settings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/settings/CancellablePreference$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProcessStatsDetail;

.field final synthetic val$service:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/android/settings/CancellablePreference;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/settings/applications/ProcessStatsDetail;->access$000(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
