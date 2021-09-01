.class Lcom/android/settings/ProxySelector$2;
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

    .line 254
    iput-object p1, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    iget-object p1, p1, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    iget-object p1, p1, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p0, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    iget-object p0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
