.class Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)[Z

    move-result-object p0

    aput-boolean p3, p0, p2

    return-void
.end method
