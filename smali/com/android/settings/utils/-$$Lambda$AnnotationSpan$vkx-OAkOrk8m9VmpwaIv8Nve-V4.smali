.class public final synthetic Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$vkx-OAkOrk8m9VmpwaIv8Nve-V4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Landroid/text/SpannableString;


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$vkx-OAkOrk8m9VmpwaIv8Nve-V4;->f$0:Landroid/text/SpannableString;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/-$$Lambda$AnnotationSpan$vkx-OAkOrk8m9VmpwaIv8Nve-V4;->f$0:Landroid/text/SpannableString;

    check-cast p1, Landroid/text/Annotation;

    invoke-static {p0, p1}, Lcom/android/settings/utils/AnnotationSpan;->lambda$textWithoutLink$0(Landroid/text/SpannableString;Landroid/text/Annotation;)I

    move-result p0

    return p0
.end method
