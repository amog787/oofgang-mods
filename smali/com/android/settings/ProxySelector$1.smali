.class Lcom/android/settings/ProxySelector$1;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    invoke-virtual {p1}, Lcom/android/settings/ProxySelector;->saveToDb()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/settings/ProxySelector$1;->this$0:Lcom/android/settings/ProxySelector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
