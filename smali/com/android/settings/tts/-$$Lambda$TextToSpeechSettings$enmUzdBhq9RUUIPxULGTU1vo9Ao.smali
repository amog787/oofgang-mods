.class public final synthetic Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$enmUzdBhq9RUUIPxULGTU1vo9Ao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$enmUzdBhq9RUUIPxULGTU1vo9Ao;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$enmUzdBhq9RUUIPxULGTU1vo9Ao;->f$0:Ljava/text/Collator;

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p0, p1, p2}, Lcom/android/settings/tts/TextToSpeechSettings;->lambda$updateDefaultLocalePref$3(Ljava/text/Collator;Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
