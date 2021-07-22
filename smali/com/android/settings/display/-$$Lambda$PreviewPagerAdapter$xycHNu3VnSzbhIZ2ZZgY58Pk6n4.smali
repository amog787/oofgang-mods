.class public final synthetic Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/PreviewPagerAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/PreviewPagerAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iput p2, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$1:I

    iput p3, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$1:I

    iget p0, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$xycHNu3VnSzbhIZ2ZZgY58Pk6n4;->f$2:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/settings/display/PreviewPagerAdapter;->lambda$new$0$PreviewPagerAdapter(IILandroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method
