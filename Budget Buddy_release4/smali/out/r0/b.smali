.class public Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ls0/j;

.field private b:Lg0/a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ls0/j$d;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Ls0/j$c;


# direct methods
.method public constructor <init>(Lf0/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/b$a;

    invoke-direct {v0, p0}, Lr0/b$a;-><init>(Lr0/b;)V

    iput-object v0, p0, Lr0/b;->d:Ls0/j$c;

    new-instance v1, Ls0/j;

    sget-object v2, Ls0/q;->b:Ls0/q;

    const-string v3, "flutter/deferredcomponent"

    invoke-direct {v1, p1, v3, v2}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;Ls0/k;)V

    iput-object v1, p0, Lr0/b;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object p1

    invoke-virtual {p1}, Le0/a;->a()Lg0/a;

    move-result-object p1

    iput-object p1, p0, Lr0/b;->b:Lg0/a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr0/b;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lr0/b;)Lg0/a;
    .registers 1

    iget-object p0, p0, Lr0/b;->b:Lg0/a;

    return-object p0
.end method

.method static synthetic b(Lr0/b;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lr0/b;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public c(Lg0/a;)V
    .registers 2

    iput-object p1, p0, Lr0/b;->b:Lg0/a;

    return-void
.end method
