.class Lcom/android/settings/ProxySelector$3;
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

    .line 262
    iput-object p1, p0, Lcom/android/settings/ProxySelector$3;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/settings/ProxySelector$3;->this$0:Lcom/android/settings/ProxySelector;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->populateFields()V

    return-void
.end method
