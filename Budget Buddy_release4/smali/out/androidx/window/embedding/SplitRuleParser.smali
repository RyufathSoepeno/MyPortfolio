.class public final Landroidx/window/embedding/SplitRuleParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;
    .registers 13

    if-eqz p2, :cond_75

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_75

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x2e

    if-ne v0, v9, :cond_25

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_25
    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lp1/d;->x(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_45

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_45
    const-string v0, "*"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lp1/d;->x(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_6f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_6f
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/window/R$styleable;->ActivityFilter:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Landroidx/window/R$styleable;->ActivityFilter_activityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/window/R$styleable;->ActivityFilter_activityAction:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/window/embedding/ActivityFilter;

    const-string v2, "packageName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseSplitActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/window/R$styleable;->ActivityRule_alwaysExpand:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    new-instance p2, Landroidx/window/embedding/ActivityRule;

    invoke-static {}, Lb1/d0;->b()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroidx/window/embedding/ActivityRule;-><init>(Ljava/util/Set;Z)V

    return-object p2
.end method

.method private final parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Landroidx/window/R$styleable;->SplitPairFilter_primaryActivityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityName:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroidx/window/R$styleable;->SplitPairFilter_secondaryActivityAction:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "packageName"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v1}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p1

    new-instance v1, Landroidx/window/embedding/SplitPairFilter;

    invoke-direct {v1, v0, p1, p2}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;
    .registers 14

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/window/R$styleable;->SplitPairRule:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_splitRatio:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_splitMinWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int v7, p2

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_splitMinSmallestWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int v8, p2

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_splitLayoutDirection:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_finishPrimaryWithSecondary:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_finishSecondaryWithPrimary:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget p2, Landroidx/window/R$styleable;->SplitPairRule_clearTop:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    new-instance p1, Landroidx/window/embedding/SplitPairRule;

    invoke-static {}, Lb1/d0;->b()Ljava/util/Set;

    move-result-object v3

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;ZZZIIFI)V

    return-object p1
.end method

.method private final parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;
    .registers 13

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Landroidx/window/R$styleable;->SplitPlaceholderRule_placeholderActivityName:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitRatio:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinWidth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v6, v1

    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitMinSmallestWidth:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v7, v1

    sget v1, Landroidx/window/R$styleable;->SplitPlaceholderRule_splitLayoutDirection:I

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/SplitRuleParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/ComponentName;

    move-result-object p1

    new-instance p2, Landroidx/window/embedding/SplitPlaceholderRule;

    invoke-static {}, Lb1/d0;->b()Ljava/util/Set;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const-string p1, "Intent().setComponent(pl\u2026eholderActivityClassName)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;IIFI)V

    return-object p2
.end method

.method private final parseSplitXml(Landroid/content/Context;I)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string v0, "resources.getXml(splitResourceId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_e} :catch_ec

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_1e
    const/4 v7, 0x1

    if-eq v3, v7, :cond_eb

    const/4 v7, 0x3

    if-ne v3, v7, :cond_2a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_eb

    :cond_2a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_e5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "split-config"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto/16 :goto_e5

    :cond_3f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_ee

    goto/16 :goto_e5

    :sswitch_4e
    const-string v7, "SplitPlaceholderRule"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_e5

    :cond_58
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPlaceholderRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-object v5, v4

    :goto_61
    move-object v6, v3

    goto/16 :goto_e5

    :sswitch_64
    const-string v7, "ActivityRule"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_e5

    :cond_6e
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitActivityRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    move-object v6, v5

    :goto_77
    move-object v4, v3

    goto/16 :goto_e5

    :sswitch_7a
    const-string v7, "SplitPairFilter"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_e5

    :cond_83
    if-eqz v5, :cond_94

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPairFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairFilter;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Landroidx/window/embedding/SplitPairRule;->plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found orphaned SplitPairFilter outside of SplitPairRule"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_9c
    const-string v7, "SplitPairRule"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    goto :goto_e5

    :cond_a5
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitPairRule(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/SplitPairRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    move-object v6, v4

    :goto_ae
    move-object v5, v3

    goto :goto_e5

    :sswitch_b0
    const-string v7, "ActivityFilter"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    goto :goto_e5

    :cond_b9
    if-nez v4, :cond_c6

    if-eqz v6, :cond_be

    goto :goto_c6

    :cond_be
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found orphaned ActivityFilter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c6
    :goto_c6
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseActivityFilter(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/window/embedding/ActivityFilter;

    move-result-object v3

    if-eqz v4, :cond_d7

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Landroidx/window/embedding/ActivityRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/ActivityRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_d7
    if-eqz v6, :cond_e5

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Landroidx/window/embedding/SplitPlaceholderRule;->plus$window_release(Landroidx/window/embedding/ActivityFilter;)Landroidx/window/embedding/SplitPlaceholderRule;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_61

    :cond_e5
    :goto_e5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_1e

    :cond_eb
    return-object v0

    :catch_ec
    return-object v1

    nop

    :sswitch_data_ee
    .sparse-switch
        0x1e7baf87 -> :sswitch_b0
        0x1f056610 -> :sswitch_9c
        0x5e21258c -> :sswitch_7a
        0x6ae032cb -> :sswitch_64
        0x7a3f98b5 -> :sswitch_4e
    .end sparse-switch
.end method


# virtual methods
.method public final parseSplitRules$window_release(Landroid/content/Context;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitRuleParser;->parseSplitXml(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
