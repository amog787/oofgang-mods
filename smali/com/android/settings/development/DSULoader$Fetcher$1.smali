.class Lcom/android/settings/development/DSULoader$Fetcher$1;
.super Ljava/lang/Object;
.source "DSULoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/DSULoader$Fetcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/development/DSULoader$Fetcher;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DSULoader$Fetcher;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$Fetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$Fetcher;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$Fetcher;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-static {v0}, Lcom/android/settings/development/DSULoader;->access$200(Lcom/android/settings/development/DSULoader;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$Fetcher;

    iget-object v0, v0, Lcom/android/settings/development/DSULoader$Fetcher;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-static {v0}, Lcom/android/settings/development/DSULoader;->access$200(Lcom/android/settings/development/DSULoader;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$Fetcher$1;->this$1:Lcom/android/settings/development/DSULoader$Fetcher;

    iget-object p0, p0, Lcom/android/settings/development/DSULoader$Fetcher;->this$0:Lcom/android/settings/development/DSULoader;

    invoke-static {p0}, Lcom/android/settings/development/DSULoader;->access$100(Lcom/android/settings/development/DSULoader;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
