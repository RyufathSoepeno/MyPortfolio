.class public Lio/flutter/plugin/editing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/o$b;
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# instance fields
.field private final a:Lr0/o;

.field private final b:Landroid/view/textservice/TextServicesManager;

.field private c:Landroid/view/textservice/SpellCheckerSession;

.field d:Ls0/j$d;


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextServicesManager;Lr0/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/editing/f;->b:Landroid/view/textservice/TextServicesManager;

    iput-object p2, p0, Lio/flutter/plugin/editing/f;->a:Lr0/o;

    invoke-virtual {p2, p0}, Lr0/o;->b(Lr0/o$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ls0/j$d;)V
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    const-string p2, "error"

    const-string v0, "Previous spell check request still pending."

    invoke-interface {p3, p2, v0, p1}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_d
    iput-object p3, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/f;->a:Lr0/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/o;->b(Lr0/o$b;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/f;->c:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_d
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lt0/b;->b(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugin/editing/f;->c:Landroid/view/textservice/SpellCheckerSession;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/flutter/plugin/editing/f;->b:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p0, v1}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/f;->c:Landroid/view/textservice/SpellCheckerSession;

    :cond_12
    new-array p1, v1, [Landroid/view/textservice/TextInfo;

    const/4 v0, 0x0

    new-instance v1, Landroid/view/textservice/TextInfo;

    invoke-direct {v1, p2}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;)V

    aput-object v1, p1, v0

    iget-object p2, p0, Lio/flutter/plugin/editing/f;->c:Landroid/view/textservice/SpellCheckerSession;

    const/4 v0, 0x5

    invoke-virtual {p2, p1, v0}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 14

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object p1, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    invoke-interface {p1, v0}, Ls0/j$d;->a(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    return-void

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    aget-object p1, p1, v2

    if-nez p1, :cond_23

    iget-object p1, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_b

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {p1}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v4

    if-ge v3, v4, :cond_7f

    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v5

    if-gtz v5, :cond_35

    goto :goto_7c

    :cond_35
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "startIndex"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "endIndex"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5c
    if-ge v8, v5, :cond_71

    invoke-virtual {v4, v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_71
    if-nez v9, :cond_74

    goto :goto_7c

    :cond_74
    const-string v4, "suggestions"

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_7f
    iget-object p1, p0, Lio/flutter/plugin/editing/f;->d:Ls0/j$d;

    goto :goto_b
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 2

    return-void
.end method
