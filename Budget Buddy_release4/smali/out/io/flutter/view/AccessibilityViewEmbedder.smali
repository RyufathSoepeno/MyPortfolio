.class Lio/flutter/view/AccessibilityViewEmbedder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityViewEmbedder$b;,
        Lio/flutter/view/AccessibilityViewEmbedder$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityBridge"


# instance fields
.field private final embeddedViewToDisplayBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterIdToOrigin:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/view/AccessibilityViewEmbedder$c;",
            ">;"
        }
    .end annotation
.end field

.field private nextFlutterId:I

.field private final originToFlutterId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/flutter/view/AccessibilityViewEmbedder$c;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

.field private final rootAccessibilityView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/view/AccessibilityViewEmbedder$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>(Lio/flutter/view/AccessibilityViewEmbedder$a;)V

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    iput p2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    return-void
.end method

.method private addChildrenToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_45

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v1, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->d(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_42

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result v1

    new-instance v2, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v1, v3}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3d

    :cond_33
    iget v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    invoke-direct {p0, p2, v1, v2}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    move v1, v2

    :goto_3d
    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p3, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_45
    return-void
.end method

.method private cacheVirtualIdMappings(Landroid/view/View;II)V
    .registers 6

    new-instance v0, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    iget-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->copyAccessibilityFields(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->setFlutterNodesTranslateBounds(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p3, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->addChildrenToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0, p1, p3, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->setFlutterNodeParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private copyAccessibilityFields(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canOpenPopup()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getInputType()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMaxTextLength()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    const/16 v1, 0x17

    if-lt v0, v1, :cond_ca

    invoke-static {p1}, Lio/flutter/view/g;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    invoke-static {p2, v1}, Lio/flutter/view/k;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    :cond_ca
    const/16 v1, 0x18

    if-lt v0, v1, :cond_dc

    invoke-static {p1}, Lio/flutter/view/l;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    invoke-static {p2, v1}, Lio/flutter/view/m;->a(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-static {p1}, Lio/flutter/view/n;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    invoke-static {p2, v1}, Lio/flutter/view/o;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    :cond_dc
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f5

    invoke-static {p1}, Lio/flutter/view/p;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lio/flutter/view/q;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    invoke-static {p1}, Lio/flutter/view/h;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Lio/flutter/view/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lio/flutter/view/i;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    invoke-static {p2, p1}, Lio/flutter/view/j;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    :cond_f5
    return-void
.end method

.method private setFlutterNodeParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->c(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result p1

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance v1, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2a

    iget-object p2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    :cond_2a
    return-void
.end method

.method private setFlutterNodesTranslateBounds(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 6

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    iget-object v3, v0, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return-object v1

    :cond_17
    iget-object v2, v0, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-nez v2, :cond_20

    return-object v1

    :cond_20
    iget-object v2, v0, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    iget v3, v0, Lio/flutter/view/AccessibilityViewEmbedder$c;->b:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_2f

    return-object v1

    :cond_2f
    iget-object v0, v0, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-direct {p0, v2, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;
    .registers 6

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v0, p2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->e(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result p2

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance v2, Lio/flutter/view/AccessibilityViewEmbedder$c;

    invoke-direct {v2, p1, p2, v0}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v1, v0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->a(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    invoke-direct {p0, v0, p2, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->convertToFlutterNode(Landroid/view/accessibility/AccessibilityNodeInfo;ILandroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    iget-object v4, v0, Lio/flutter/view/AccessibilityViewEmbedder;->embeddedViewToDisplayBounds:Ljava/util/Map;

    iget-object v5, v2, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    new-array v12, v5, [Landroid/view/MotionEvent$PointerProperties;

    new-array v13, v5, [Landroid/view/MotionEvent$PointerCoords;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_56

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v12, v3

    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6, v5}, Landroid/view/MotionEvent$PointerCoords;-><init>(Landroid/view/MotionEvent$PointerCoords;)V

    aput-object v6, v13, v3

    iget v5, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, v2, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 6

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    :cond_c
    iget-object v1, p1, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-nez v1, :cond_15

    return v0

    :cond_15
    iget p1, p1, Lio/flutter/view/AccessibilityViewEmbedder$c;->b:I

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public platformViewOfNode(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder;->flutterIdToOrigin:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/AccessibilityViewEmbedder$c;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    iget-object p1, p1, Lio/flutter/view/AccessibilityViewEmbedder$c;->a:Landroid/view/View;

    return-object p1
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 10

    invoke-static {p3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v1, p3}, Lio/flutter/view/AccessibilityViewEmbedder$b;->e(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result v1

    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    new-instance v4, Lio/flutter/view/AccessibilityViewEmbedder$c;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_37

    iget v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/flutter/view/AccessibilityViewEmbedder;->nextFlutterId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, p1, v1, v4}, Lio/flutter/view/AccessibilityViewEmbedder;->cacheVirtualIdMappings(Landroid/view/View;II)V

    :cond_37
    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    :goto_4f
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v1

    if-ge p3, v1, :cond_8c

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->reflectionAccessors:Lio/flutter/view/AccessibilityViewEmbedder$b;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->e(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_62

    return v2

    :cond_62
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/flutter/view/AccessibilityViewEmbedder$b;->b(J)I

    move-result v3

    new-instance v4, Lio/flutter/view/AccessibilityViewEmbedder$c;

    invoke-direct {v4, p1, v3, v5}, Lio/flutter/view/AccessibilityViewEmbedder$c;-><init>(Landroid/view/View;ILio/flutter/view/AccessibilityViewEmbedder$a;)V

    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    return v2

    :cond_78
    iget-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder;->originToFlutterId:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {v1, v4, v3}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4f

    :cond_8c
    iget-object p1, p0, Lio/flutter/view/AccessibilityViewEmbedder;->rootAccessibilityView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
