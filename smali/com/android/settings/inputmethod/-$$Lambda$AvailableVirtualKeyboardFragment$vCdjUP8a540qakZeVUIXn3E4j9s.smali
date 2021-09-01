.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$vCdjUP8a540qakZeVUIXn3E4j9s;
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

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$vCdjUP8a540qakZeVUIXn3E4j9s;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$vCdjUP8a540qakZeVUIXn3E4j9s;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/android/settingslib/OPInputMethodPreference;

    check-cast p2, Lcom/android/settingslib/OPInputMethodPreference;

    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/android/settingslib/OPInputMethodPreference;Lcom/android/settingslib/OPInputMethodPreference;)I

    move-result p0

    return p0
.end method
