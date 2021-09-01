.class Lcom/android/settings/development/DSULoader$1;
.super Ljava/lang/Object;
.source "DSULoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DSULoader;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DSULoader;

.field final synthetic val$dsu:Lcom/android/settings/development/DSULoader$DSUPackage;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DSULoader;Lcom/android/settings/development/DSULoader$DSUPackage;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    iput-object p2, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Lcom/android/settings/development/DSULoader$DSUPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mTosUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-static {v0}, Lcom/android/settings/development/DSULoader;->access$000(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSULOADER"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    .line 384
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    const-class v3, Lcom/android/settings/development/DSUTermsOfServiceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "KEY_TOS"

    .line 385
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mUri:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$1;->val$dsu:Lcom/android/settings/development/DSULoader$DSUPackage;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$DSUPackage;->mPubKey:Ljava/lang/String;

    const-string v2, "KEY_PUBKEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object p0, p0, Lcom/android/settings/development/DSULoader$1;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-virtual {p0, v1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
