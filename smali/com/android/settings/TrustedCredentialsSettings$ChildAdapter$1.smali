.class Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;
.super Landroid/database/DataSetObserver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 548
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 549
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->access$2101(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 553
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 554
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;->this$1:Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->access$2201(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    return-void
.end method
