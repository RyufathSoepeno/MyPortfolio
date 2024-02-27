.class public final Lu/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/d$c$a;
    }
.end annotation


# static fields
.field public static final d:Lu/d$c$a;

.field public static final e:Lu/d$c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lu/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu/d$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lu/h;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lu/d$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/d$c$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lu/d$c;->d:Lu/d$c$a;

    new-instance v0, Lu/d$c;

    invoke-static {}, Lb1/d0;->b()Ljava/util/Set;

    move-result-object v2

    invoke-static {}, Lb1/x;->d()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lu/d$c;-><init>(Ljava/util/Set;Lu/d$b;Ljava/util/Map;)V

    sput-object v0, Lu/d$c;->e:Lu/d$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lu/d$b;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lu/d$a;",
            ">;",
            "Lu/d$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lu/h;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedViolations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/d$c;->a:Ljava/util/Set;

    iput-object p2, p0, Lu/d$c;->b:Lu/d$b;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_3a
    iput-object p1, p0, Lu/d$c;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lu/d$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu/d$c;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final b()Lu/d$b;
    .registers 2

    iget-object v0, p0, Lu/d$c;->b:Lu/d$b;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lu/h;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lu/d$c;->c:Ljava/util/Map;

    return-object v0
.end method
