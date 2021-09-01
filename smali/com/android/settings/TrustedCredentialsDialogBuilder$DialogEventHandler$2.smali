.class Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCertLayout(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$views:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Ljava/util/ArrayList;)V
    .locals 0

    .line 296
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;->val$views:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    move p2, p1

    .line 300
    :goto_0
    iget-object p4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;->val$views:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 301
    iget-object p4, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$2;->val$views:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    if-ne p2, p3, :cond_0

    move p5, p1

    goto :goto_1

    :cond_0
    const/16 p5, 0x8

    :goto_1
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
