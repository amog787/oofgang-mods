.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SlicePreferenceController$m_43wPv9OceTDRhAvK9GAlDkl9U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceLiveData$OnErrorListener;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SlicePreferenceController$m_43wPv9OceTDRhAvK9GAlDkl9U;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onSliceError(ILjava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/-$$Lambda$SlicePreferenceController$m_43wPv9OceTDRhAvK9GAlDkl9U;->f$0:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SlicePreferenceController;->lambda$setSliceUri$0(Landroid/net/Uri;ILjava/lang/Throwable;)V

    return-void
.end method
