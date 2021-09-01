.class public final synthetic Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/widget/SeekBarPreference;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/widget/SeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;->f$0:Lcom/android/settings/widget/SeekBarPreference;

    iput-object p2, p0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;->f$0:Lcom/android/settings/widget/SeekBarPreference;

    iget-object p0, p0, Lcom/android/settings/widget/-$$Lambda$SeekBarPreference$dLBfCJMqk38mmQ3tQY-pIyDA0S8;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SeekBarPreference;->lambda$onBindViewHolder$0$SeekBarPreference(Landroid/view/View;)V

    return-void
.end method
