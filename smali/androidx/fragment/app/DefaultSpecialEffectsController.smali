.class Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;,
        Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;
    }
.end annotation


# instance fields
.field private final mRunningOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Ljava/util/HashSet<",
            "Landroidx/core/os/CancellationSignal;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    return-void
.end method

.method private addCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .locals 2

    .line 59
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startAnimation(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .locals 10

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 173
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 175
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v3

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-eq v3, v4, :cond_1

    .line 176
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v3

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 174
    :goto_1
    invoke-static {v0, v1, v3}, Landroidx/fragment/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;Z)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v7

    if-nez v7, :cond_2

    .line 179
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    return-void

    .line 183
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 185
    iget-object v0, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-eq v0, v1, :cond_4

    .line 187
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 189
    :cond_3
    new-instance v0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    iget-object v1, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v1, v2, v6}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_3

    .line 188
    :cond_4
    :goto_2
    new-instance v0, Landroidx/fragment/app/FragmentAnim$EnterViewTransitionAnimation;

    iget-object v1, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentAnim$EnterViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;)V

    :goto_3
    move-object v7, v0

    .line 191
    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 216
    :cond_5
    iget-object v8, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v9, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object p1, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 224
    iget-object p1, v7, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 228
    :goto_4
    new-instance p1, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    invoke-direct {p1, p0, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method private startTransitions(Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;Z",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 241
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl()Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v6

    if-nez v11, :cond_1

    move-object v11, v6

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_0

    if-ne v11, v6, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v11, :cond_5

    .line 254
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 255
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v3

    .line 256
    invoke-virtual {v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v2

    .line 255
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    goto :goto_1

    :cond_4
    return-void

    .line 264
    :cond_5
    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 271
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 272
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v10, Landroidx/collection/ArrayMap;

    invoke-direct {v10}, Landroidx/collection/ArrayMap;-><init>()V

    .line 274
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v16, 0x1

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 275
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    move-result v17

    if-eqz v17, :cond_d

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 281
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSharedElementTransition()Ljava/lang/Object;

    move-result-object v15

    .line 280
    invoke-virtual {v11, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 279
    invoke-virtual {v11, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 282
    invoke-virtual {v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    if-nez p2, :cond_6

    .line 288
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v17

    .line 289
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_3

    .line 293
    :cond_6
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v17

    .line 294
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v9

    .line 296
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v4, :cond_7

    move/from16 v18, v4

    move-object/from16 v4, v17

    .line 298
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    .line 299
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    .line 300
    invoke-virtual {v10, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v4

    move/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_4

    :cond_7
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v4, v17

    .line 305
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v7

    iget-object v7, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 308
    invoke-virtual {v6, v4}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 310
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 314
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 315
    invoke-virtual/range {p4 .. p4}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v14

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7, v14}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 317
    invoke-virtual {v7, v9}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 319
    invoke-static {v10, v7}, Landroidx/fragment/app/FragmentTransition;->retainValues(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 323
    invoke-virtual {v10}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 324
    invoke-virtual {v10}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 326
    invoke-virtual {v10}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 330
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 331
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, v20

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 334
    :cond_8
    invoke-virtual {v6}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    check-cast v14, Landroid/view/View;

    .line 335
    invoke-virtual {v0, v12, v14}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    move-object/from16 v14, v18

    goto :goto_5

    .line 340
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v14, 0x0

    .line 341
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 342
    invoke-virtual {v6, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 343
    invoke-virtual {v11, v15, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_6

    :cond_a
    move-object/from16 v4, v20

    .line 348
    :goto_6
    invoke-virtual {v7}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 349
    invoke-virtual {v0, v13, v14}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_7

    .line 354
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    .line 355
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 356
    invoke-virtual {v7, v9}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_c

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v7

    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    invoke-direct {v8, v0, v11, v6, v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v7, v8}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move/from16 v8, v16

    .line 376
    :cond_c
    invoke-virtual {v11, v15, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v7, v4

    goto :goto_8

    :cond_d
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v7, v20

    :goto_8
    move-object/from16 v6, v19

    goto/16 :goto_2

    :cond_e
    move-object/from16 v20, v7

    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    move-object/from16 p2, v6

    .line 387
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v10

    .line 388
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v10

    if-eqz v15, :cond_10

    if-eq v10, v1, :cond_f

    if-ne v10, v2, :cond_10

    :cond_f
    move/from16 v18, v16

    goto :goto_a

    :cond_10
    const/16 v18, 0x0

    :goto_a
    if-nez v6, :cond_12

    if-nez v18, :cond_11

    .line 397
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v6

    .line 398
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v10

    .line 397
    invoke-virtual {v0, v6, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController;->removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    :cond_11
    move-object/from16 v21, v15

    move-object/from16 v2, v20

    const/4 v10, 0x0

    goto :goto_e

    .line 402
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v19

    move-object/from16 v21, v15

    invoke-virtual/range {v19 .. v19}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v15

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 403
    invoke-virtual {v0, v2, v15}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v18, :cond_14

    if-ne v10, v1, :cond_13

    .line 408
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 410
    :cond_13
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 413
    :cond_14
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 414
    invoke-virtual {v11, v6, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_c

    .line 416
    :cond_15
    invoke-virtual {v11, v6, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 418
    :goto_c
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v10

    sget-object v15, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-virtual {v10, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 419
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_16

    .line 421
    invoke-virtual {v11, v6, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_16
    move-object/from16 v2, v20

    goto :goto_d

    :cond_17
    move-object/from16 v2, v20

    .line 424
    invoke-virtual {v11, v6, v2}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 427
    :goto_d
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x0

    .line 429
    invoke-virtual {v11, v7, v6, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_e

    :cond_18
    const/4 v10, 0x0

    .line 433
    invoke-virtual {v11, v9, v6, v10}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_e
    move-object/from16 v6, p2

    move-object/from16 v20, v2

    move-object/from16 v10, v17

    move-object/from16 v15, v21

    move-object/from16 v2, p4

    goto/16 :goto_9

    :cond_19
    move-object/from16 v17, v10

    .line 441
    invoke-virtual {v11, v7, v9, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 446
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 447
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 450
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 452
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v6

    new-instance v7, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    invoke-direct {v7, v0, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;)V

    .line 449
    invoke-virtual {v11, v5, v1, v6, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_1b
    const/4 v2, 0x4

    .line 464
    invoke-static {v4, v2}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 466
    invoke-virtual {v11, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v11, v2, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v6

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 473
    invoke-static {v4, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 474
    invoke-virtual {v11, v15, v12, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 2

    .line 528
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 529
    sget-object v1, Landroidx/fragment/app/DefaultSpecialEffectsController$8;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$Type:[I

    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 532
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 538
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method cancelAllSpecialEffects(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    .line 83
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/os/CancellationSignal;

    .line 86
    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 487
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 488
    check-cast p2, Landroid/view/ViewGroup;

    .line 489
    invoke-static {p2}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 492
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 494
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 495
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 496
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method executeOperations(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 98
    sget-object v5, Landroidx/fragment/app/DefaultSpecialEffectsController$8;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$Type:[I

    invoke-virtual {v3}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_2

    const/4 v4, 0x2

    if-eq v5, v4, :cond_2

    const/4 v4, 0x3

    if-eq v5, v4, :cond_1

    const/4 v4, 0x4

    if-eq v5, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 115
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 121
    new-instance v7, Landroidx/core/os/CancellationSignal;

    invoke-direct {v7}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 122
    invoke-direct {p0, v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->addCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 124
    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v8, v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v7, Landroidx/core/os/CancellationSignal;

    invoke-direct {v7}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 128
    invoke-direct {p0, v6, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController;->addCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    .line 130
    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    if-ne v6, v1, :cond_5

    goto :goto_2

    :cond_4
    if-ne v6, v2, :cond_5

    :goto_2
    move v9, v4

    .line 131
    :cond_5
    invoke-direct {v8, v6, v7, p2, v9}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 130
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v7, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    invoke-direct {v7, p0, v5, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 145
    invoke-virtual {v6}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v7

    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    invoke-direct {v8, p0, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v7, v8}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto :goto_1

    .line 155
    :cond_6
    invoke-direct {p0, v3, p2, v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startTransitions(Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 159
    invoke-virtual {p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getSignal()Landroidx/core/os/CancellationSignal;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimation(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    goto :goto_3

    .line 162
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 163
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->applyContainerChanges(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    goto :goto_4

    .line 165
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void
.end method

.method findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 510
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 515
    check-cast p2, Landroid/view/ViewGroup;

    .line 516
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 518
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 520
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController;->mRunningOperations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    :cond_0
    return-void
.end method
