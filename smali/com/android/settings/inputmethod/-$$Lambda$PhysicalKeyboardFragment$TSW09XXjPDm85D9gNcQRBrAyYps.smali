.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$TSW09XXjPDm85D9gNcQRBrAyYps;->f$1:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$scheduleUpdateHardKeyboards$0$PhysicalKeyboardFragment(Ljava/util/List;)V

    return-void
.end method
