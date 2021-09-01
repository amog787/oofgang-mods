.class Lcom/android/settings/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 703
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings$5;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p0}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
